class CodeGenerator
    include Sidekiq::Worker
    sidekiq_options :retry => false

    def perform
    end

    def createAction (contr_name, method)
        f = File.open("../gems/app/controllers/#{contr_name}_controller.rb","a")
        x = f.read
        y = x.split("end")
        y[y.size-1] = y[y.size-1] + "\n" + "def #{method}\nend"
        y = y.join
        f.close
        f = File.open("../gems/app/controllers/#{contr_name}_controller.rb","w+")
        f.write(y)
        f.close
    end

    def createVariable(contr_name,opHash)
        #fnID,modelName,varName,operation,value,join
        v = ""
        f = File.open("../gems/app/controllers/#{contr_name}_controller.rb","a+")
        x = f.read
        puts x
        y = x.split("def #{Function.find_by_id(opHash[0][:fnID]).name}")
        qstr = "\n"+"    #{opHash[0][:modelName]}.where(\""
            opHash.each do |h|
                qstr+="#{h[:varName]} #{h[:operation]}:#{h[:varName]}"+(h[:join].to_s)
                v+=",#{h[:varName]}: #{h[:value]} "
            end
            qstr+="\""+v+")\n"
        y[1].prepend(qstr)
        y[1].prepend("def #{Function.find_by_id(opHash[0][:fnID]).name}")
        y = y.join
        f.close
        g = File.open("../gems/app/controllers/#{contr_name}_controller.rb","w+")
        g.write(y)
        g.close
    end

    def generateController(controllerName)
        if(Control.find_by_name(controllerName).nil?)
            `rails g controller #{controllerName}`
            Control.create(name: controllerName)
        end
    end


    def addValidations(modelName,opsHash)
    end
    #[{columnName: "name", columnType: "integer..",table: "tableName"},{}]
    def addAttributes(attributes)
        x = "#{Time.now.day}#{Time.now.hour}#{Time.now.min}#{Time.now.sec}"
        fname = "AddColumns#{x}"
        fname2= "_add_columns#{x}"
        `rails g migration #{fname}`
        name = Dir['../gems/db/migrate/*'+fname2+'.rb'].first
        f = File.open(name,'a+')
        content = f.read
        s = content.split("def change")
        migrationString = ""
        attributes.each do |h|
            migrationString += "add_column :#{h[:table]},:#{h[:columnName]},:#{h[:columnType]}\n"
        end
        s[1].prepend(migrationString)
        s[1].prepend("def change\n")
        s = s.join
        f.close
        f= File.open(name,"w+")
        f.write(s)
        f.close
    end


    def generateModel(modelName)
        if(Mod.find_by_name(modelName).nil?)
          `rails g model #{modelName}`
          Mod.create(name: modelName)
        end
    end


end
