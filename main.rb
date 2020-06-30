#!/usr/bin/env ruby

require 'telegram/bot'

# Set enviroment vars TOKEN and BOT_USERNAME
TOKEN = '1002934286:AAHNSUNCXya7jeVthNQsAQjV2C8n0UKpqwM'
BOT_USERNAME = 'Contatos_vale_bot'

def get(word, username='')
  return word+username
  Regexp.new("/#{word}|#{word}#{BOT_USERNAME}")
end

def show_params
  puts "[INFO] Params:"
  puts "* TOKEN        = #{TOKEN}"
  puts "* BOT_USERNAME = #{BOT_USERNAME}"
  puts "[INFO] Running bot #{$0}..."
end

show_params
Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    puts " => #{message.text}"

    case message.text

    when '/sn'

      bot.api.send_message(chat_id: message.chat.id, text: "

        Contatos em Serra Norte

        Dr. Pasa
        0800 260 911

        Vale Support Center
        0800 022 4001

        APOIAR
        0800 556 689

        Recursos Humanos
        0300 313 1230

        Assistente social (Flaviana Alves)
        94 988065328
        3327 2041

        Plantão de Assistente social
        94 99973 9220

        CECOM
        0800 2850 193

        Viagens
        3327 5447
        3327 5448
        3327 5339

        TFD (corporativo)
        94 9 8801 8500

        Medicina no Trabalho
        3327 4150

        Plantão da Medicina no Trabalho
        94 9 8808 9284
        3327 4021

        Seguradora
        0800 701 2704
        4004 2704

        ")

    when '/ss'

      bot.api.send_message(chat_id: message.chat.id, text: "

        Contatos em Serra Sul

        Dr. Pasa
        0800 260 911

        Vale Support Center
        0800 022 4001

        APOIAR
        0800 556 689

        Recursos Humanos
        0300 313 1230

        Assistente social (Flaviana Alves)
        94 988065328
        3327 2041

        Plantão de Assistente social
        94 99973 9220

        CECOM
        0800 2850 193

        Viagens
        3327 5447
        3327 5448
        3327 5339

        TFD (corporativo)
        94 9 8801 8500

        Medicina no Trabalho
        3327 4150

        Plantão da Medicina no Trabalho
        94 9 8808 9284
        3327 4021

        Seguradora
        0800 701 2704
        4004 2704

        ")

    else

      bot.api.send_message(chat_id: message.chat.id, text: "

        Toque nos comandos abaixo de acordo com a necessidade

/sn - Para ver os contatos de Serra Norte
/ss - Para ver os contatos de Serra Sul

        ")

    end


  end
end