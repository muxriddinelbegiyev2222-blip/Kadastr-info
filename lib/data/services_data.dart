import 'package:flutter/material.dart';
import '../models/service_model.dart';

final List<CadastreService> cadastreServices = [
  // 1-Xizmat
  CadastreService(
    id: 1,
    icon: Icons.assignment_outlined,
    title: {
      'uz_lat': "1. Kadastr pasportini berish",
      'uz_cyr': "1. Кадастр паспортини бериш",
      'ru': "1. Выдача кадастрового паспорта",
      'en': "1. Issuance of Cadastral Passport",
    },
    summary: {
      'uz_lat': "Ko'chmas mulkning texnik ko'rsatkichlari, chizmalari va holatini aks ettiruvchi asosiy hujjat.",
      'uz_cyr': "Кўчмас мулкнинг техник кўрсаткичлари, чизмалари ва ҳолатини акс эттирувчи асосий ҳужжат.",
      'ru': "Основной документ, отражающий технические параметры и схемы объекта недвижимости.",
      'en': "The primary document reflecting the technical specifications and floor plans of real estate.",
    },
    requiredDocs: {
      'uz_lat': ["Shaxsni tasdiqlovchi hujjat (ID-karta)", "Yerga yoki mulkka bo'lgan huquqiy hujjat", "Qurilish tugallanganligi hujjati"],
      'uz_cyr': ["Шахсни тасдиқловчи ҳужжат (ID-карта)", "Ерга ёки мулкка бўлган ҳуқуқий ҳужжат", "Қурилиш тугалланганлиги ҳужжати"],
      'ru': ["Документ, удостоверяющий личность (ID-карта)", "Правоустанавливающий документ на землю/недвижимость", "Акт завершения строительства"],
      'en': ["Identity document (ID card)", "Legal document for land/real estate", "Construction completion certificate"],
    },
    missingDocsGuide: {
      'uz_lat': "Yer qarori bo'lmasa — tuman davlat arxividan yoki my.gov.uz orqali; loyiha hujjatlari — tuman arxitektura bo'limidan olinadi.",
      'uz_cyr': "Ер қарори бўлмаса — туман давлат архивидан ёки my.gov.uz орқали; лойиҳа ҳужжатлари — туман архитектура бўлимидан олинади.",
      'ru': "Решение на землю — в районном госархиве или через my.gov.uz; строительная документация — в отделе архитектуры.",
      'en': "Land grant decree — from state archives or my.gov.uz; building acts — from the architecture department.",
    },
    cost: {
      'uz_lat': "Maydoniga qarab: BHMning 1 baravaridan 3 baravarigacha rasmiy to'lov",
      'uz_cyr': "Майдонига қараб: БҲМнинг 1 бараваридан 3 бараваригача расмий тўлов",
      'ru': "От 1 до 3 БРВ в зависимости от площади объекта",
      'en': "From 1 to 3 BCU depending on the total area",
    },
    timeframe: {
      'uz_lat': "Mulk murakkabligiga qarab: 5 dan 15 ish kunigacha",
      'uz_cyr': "Мулк мураккаблигига қараб: 5 дан 15 иш кунигача",
      'ru': "От 5 до 15 рабочих дней в зависимости от сложности",
      'en': "Between 5 and 15 working days",
    },
  ),

  // 2-Xizmat
  CadastreService(
    id: 2,
    icon: Icons.how_to_reg_outlined,
    title: {
      'uz_lat': "2. Huquqni davlat ro'yxatidan o'tkazish",
      'uz_cyr': "2. Ҳуқуқни давлат рўйхатидан ўтказиш",
      'ru': "2. Госрегистрация прав на недвижимость",
      'en': "2. State Registration of Rights",
    },
    summary: {
      'uz_lat': "Mulkni oldi-sotdi, hadya yoki meros asosida davlat reyestrida rasmiy o'z nomingizga o'tkazish.",
      'uz_cyr': "Мулкни олди-сотди, ҳадя ёки мерос асосида давлат реестрида расмий ўз номингизга ўтказиш.",
      'ru': "Официальное внесение прав собственности в госреестр по договору купли-продажи, дарения или наследства.",
      'en': "Official registration of ownership in the state registry following purchase, gift, or inheritance.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Notarial shartnoma (oldi-sotdi, hadya va h.k.) yoki sud qarori", "Kadastr pasporti"],
      'uz_cyr': ["ID-карта", "Нотариал шартнома (олди-сотди, ҳадя ва ҳ.к.) ёки суд қарори", "Кадастр паспорти"],
      'ru': ["ID-карта", "Нотариальный договор (купли-продажи, дарения) или решение суда", "Кадастровый паспорт"],
      'en': ["ID card", "Notarized contract or court ruling", "Cadastral passport"],
    },
    missingDocsGuide: {
      'uz_lat': "Shartnoma yo'qolgan bo'lsa — notarial idoradan yoki notarial arxivdan dublikat olinadi.",
      'uz_cyr': "Шартнома йўқолган бўлса — нотариал идорадан ёки нотариал архивдан дубликат олинади.",
      'ru': "При утере договора — дубликат оформляется у выдавшего нотариуса или в нотариальном архиве.",
      'en': "If contract is lost — obtain duplicate from the issuing notary office or notary archives.",
    },
    cost: {
      'uz_lat': "Mulk turiga qarab: BHMning 1-1.5 baravari",
      'uz_cyr': "Мулк турига қараб: БҲМнинг 1-1.5 баравари",
      'ru': "От 1 до 1.5 БРВ в зависимости от типа имущества",
      'en': "1 to 1.5 BCU depending on property category",
    },
    timeframe: {
      'uz_lat': "2 ish kuni ichida",
      'uz_cyr': "2 иш куни ичида",
      'ru': "В течение 2 рабочих дней",
      'en': "Within 2 working days",
    },
  ),

  // 3-Xizmat
  CadastreService(
    id: 3,
    icon: Icons.landscape_outlined,
    title: {
      'uz_lat': "3. Yer huquqini ro'yxatdan o'tkazish",
      'uz_cyr': "3. Ер ҳуқуқини рўйхатдан ўтказиш",
      'ru': "3. Госрегистрация прав на землю",
      'en': "3. Land Rights Registration",
    },
    summary: {
      'uz_lat': "Ajratilgan yoki auksionda yutib olingan yer uchastkasiga bo'lgan huquqni qonuniy rasmiylashtirish.",
      'uz_cyr': "Ажратилган ёки аукционда ютиб олинган ер участкасига бўлган ҳуқуқни қонуний расмийлаштириш.",
      'ru': "Регистрация прав на выделенный или приобретенный через аукцион земельный участок.",
      'en': "Legal registration of rights for allocated or auctioned land plots.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Auksion bayonnomasi yoki vakolatli organ qarori", "Yer ijarasi/mulk shartnomasi"],
      'uz_cyr': ["ID-карта", "Аукцион баённомаси ёки ваколатли орган қарори", "Ер ижараси/мулк шартномаси"],
      'ru': ["ID-карта", "Протокол аукциона или решение уполномоченного органа", "Договор аренды/собственности на землю"],
      'en': ["ID card", "Auction protocol or decree of authorized body", "Land lease/ownership agreement"],
    },
    missingDocsGuide: {
      'uz_lat': "Auksion hujjati — e-auksion.uz tizimidan; eski qarorlar — davlat arxividan olinadi.",
      'uz_cyr': "Аукцион ҳужжати — e-auksion.uz тизимидан; эски қарорлар — давлат архивидан олинади.",
      'ru': "Протокол аукциона — в кабинете e-auksion.uz; решения хокимов — в государственном архиве.",
      'en': "Auction protocol via e-auksion.uz profile; local decrees via regional state archives.",
    },
    cost: {
      'uz_lat': "BHMning 1 baravari miqdorida",
      'uz_cyr': "БҲМнинг 1 баравари миқдорида",
      'ru': "1 БРВ",
      'en': "1 BCU",
    },
    timeframe: {
      'uz_lat': "2 ish kuni",
      'uz_cyr': "2 иш куни",
      'ru': "2 рабочих дня",
      'en': "2 working days",
    },
  ),

  // 4-Xizmat
  CadastreService(
    id: 4,
    icon: Icons.edit_location_alt_outlined,
    title: {
      'uz_lat': "4. Mulk manzilini o'zgartirish",
      'uz_cyr': "4. Мулк манзилини ўзгартириш",
      'ru': "4. Изменение адреса объекта",
      'en': "4. Real Estate Address Update",
    },
    summary: {
      'uz_lat': "Ko'cha nomi yoki mahalla o'zgarganda kadastr tizimidagi manzilni yangilash.",
      'uz_cyr': "Кўча номи ёки маҳалла ўзгарганда кадастр тизимидаги манзилни янгилаш.",
      'ru': "Актуализация адреса недвижимости при переименовании улиц или изменении границ.",
      'en': "Updating cadastral records after changes in street names or administrative addresses.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Kadastr pasporti", "Hokimlikning manzil o'zgartirish qarori yoki ma'lumotnomasi"],
      'uz_cyr': ["ID-карта", "Кадастр паспорти", "Ҳокимликнинг манзил ўзгартириш қарори ёки маълумотномаси"],
      'ru': ["ID-карта", "Кадастровый паспорт", "Постановление хокимията или справка о присвоении адреса"],
      'en': ["ID card", "Cadastral passport", "Address assignment decree from local municipality"],
    },
    missingDocsGuide: {
      'uz_lat': "Manzil qarori tuman hokimligidan yoki DXM orqali Geoportal tizimidan avtomat olinadi.",
      'uz_cyr': "Манзил қарори туман ҳокимлигидан ёки ДХМ орқали Geoportal тизимидан автомат олинади.",
      'ru': "Справка об адресе формируется через хокимият или систему Geoportal в центрах госуслуг.",
      'en': "Address document is retrieved through municipality or Geoportal integration.",
    },
    cost: {
      'uz_lat': "Bepul (Davlat tashabbusi bilan bo'lsa)",
      'uz_cyr': "Бепул (Давлат ташаббуси билан бўлса)",
      'ru': "Бесплатно (при общегосударственном переименовании)",
      'en': "Free of charge (upon municipal reassignment)",
    },
    timeframe: {
      'uz_lat': "1 ish kuni",
      'uz_cyr': "1 иш куни",
      'ru': "1 рабочий день",
      'en': "1 working day",
    },
  ),

  // 5-Xizmat
  CadastreService(
    id: 5,
    icon: Icons.copy_all_outlined,
    title: {
      'uz_lat': "5. Kadastr pasporti dublikatini berish",
      'uz_cyr': "5. Кадастр паспорти дубликатини бериш",
      'ru': "5. Выдача дубликата паспорта",
      'en': "5. Cadastral Passport Duplicate",
    },
    summary: {
      'uz_lat': "Hujjat yo'qolganda, shikastlanganda aynan bir xil nusxasini qayta rasmiylashtirish.",
      'uz_cyr': "Ҳужжат йўқолганда, шикастланганда айнан бир хил нусхасини қайта расмийлаштириш.",
      'ru': "Восстановление документа при утере или физическом повреждении оригинала.",
      'en': "Reissuance of duplicate document following loss or mechanical damage.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Yo'qolganligi haqida ariza (agar yaroqsiz bo'lsa, asli taqdim etiladi)"],
      'uz_cyr': ["ID-карта", "Йўқолганлиги ҳақида ариза (агар яроқсиз бўлса, асли тақдим этилади)"],
      'ru': ["ID-карта", "Заявление об утере (при повреждении — оригинал документа)"],
      'en': ["ID card", "Declaration of loss (or damaged original copy)"],
    },
    missingDocsGuide: {
      'uz_lat': "Baza orqali avtomatik tekshiriladi; eski hujjatlar uchun tuman kadastr arxividan qidiriladi.",
      'uz_cyr': "База орқали автоматик текширилади; эски ҳужжатлар учун туман кадастр архивидан қидирилади.",
      'ru': "Сверяется по цифровой базе; архивные дела запрашиваются в архиве палаты кадастра.",
      'en': "Verified via central database; paper archives searched at local cadastral office.",
    },
    cost: {
      'uz_lat': "BHMning 50 foizi miqdorida",
      'uz_cyr': "БҲМнинг 50 фоизи миқдорида",
      'ru': "50% от БРВ",
      'en': "50% of BCU",
    },
    timeframe: {
      'uz_lat': "3 ish kuni",
      'uz_cyr': "3 иш куни",
      'ru': "3 рабочих дня",
      'en': "3 working days",
    },
  ),

  // 6-Xizmat
  CadastreService(
    id: 6,
    icon: Icons.architecture_outlined,
    title: {
      'uz_lat': "6. Qayta rejalashtirishni qonuniylashtirish",
      'uz_cyr': "6. Қайта режалаштиришни қонунийлаштириш",
      'ru': "6. Узаконение перепланировки/реконструкции",
      'en': "6. Redevelopment Legalization",
    },
    summary: {
      'uz_lat': "Devorlar buzilganda, qo'shimcha bino qurilganda o'zgarishlarni kadastrga kiritish.",
      'uz_cyr': "Деворлар бузилганда, қўшимча бино қурилганда ўзгаришларни кадастрга киритиш.",
      'ru': "Внесение изменений в кадастровую документацию после сноса перегородок или достроек.",
      'en': "Registering structural layout modifications or extensions into cadastral archives.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Kadastr pasporti", "Arxitektura bo'limi ruxsatnomasi yoki tasdiqlangan loyiha"],
      'uz_cyr': ["ID-карта", "Кадастр паспорти", "Архитектура бўлими рухсатномаси ёки тасдиқланган лойиҳа"],
      'ru': ["ID-карта", "Кадастровый паспорт", "Разрешение районного отдела архитектуры или проект"],
      'en': ["ID card", "Cadastral passport", "Architecture department permit or approved blueprint"],
    },
    missingDocsGuide: {
      'uz_lat': "Ruxsatnoma tuman Qurilish va uy-joy kommunal xo'jaligi bo'limi orqali rasmiylashtiriladi.",
      'uz_cyr': "Рухсатнома туман Қурилиш ва уй-жой коммунал хўжалиги бўлими орқали расмийлаштирилади.",
      'ru': "Разрешение выдается через районный отдел строительства и ЖКХ.",
      'en': "Permits issued by local Department of Construction and Housing Public Utilities.",
    },
    cost: {
      'uz_lat': "BHMning 1 dan 2 baravarigacha",
      'uz_cyr': "БҲМнинг 1 дан 2 бараваригача",
      'ru': "От 1 до 2 БРВ",
      'en': "1 to 2 BCU",
    },
    timeframe: {
      'uz_lat': "5-10 ish kuni",
      'uz_cyr': "5-10 иш куни",
      'ru': "5-10 рабочих дней",
      'en': "5-10 working days",
    },
  ),

  // 7-Xizmat
  CadastreService(
    id: 7,
    icon: Icons.call_split_outlined,
    title: {
      'uz_lat': "7. Obyektni bo'lish yoki birlashtirish",
      'uz_cyr': "7. Объектни бўлиш ёки бирлаштириш",
      'ru': "7. Раздел или объединение объектов",
      'en': "7. Division or Merge of Real Estate",
    },
    summary: {
      'uz_lat': "Mulkni ikki mustaqil qismga ajratish yoki ikkita tutash joyni bitta qilish.",
      'uz_cyr': "Мулкни икки мустақил қисмга ажратиш ёки иккита туташ жойни битта қилиш.",
      'ru': "Разделение объекта на два независимых или объединение смежных участков/помещений.",
      'en': "Partitioning property into separate titles or merging adjacent units into single title.",
    },
    requiredDocs: {
      'uz_lat': ["Egalarining ID-kartalari", "Mulk huquqi hujjatlari", "Notarial tasdiqlangan taqsimot bitimi yoki sud qarori"],
      'uz_cyr': ["Эгаларининг ID-карталари", "Мулк ҳуқуқи ҳужжатлари", "Нотариал тасдиқланган тақсимот битими ёки суд қарори"],
      'ru': ["Паспорта владельцев", "Правоустанавливающие документы", "Нотариальное соглашение о разделе или решение суда"],
      'en': ["Owners' ID cards", "Ownership titles", "Notarized partition agreement or judicial verdict"],
    },
    missingDocsGuide: {
      'uz_lat': "Kelishuv notariusda tuziladi; nizo mavjud bo'lsa Fuqarolik sudiga da'vo arizasi kiritiladi.",
      'uz_cyr': "Келишув нотариусда тузилади; низо мавжуд бўлса Фуқаролик судига даъво аризаси киритилади.",
      'ru': "Соглашение оформляется у нотариуса; при разногласиях — через районный гражданский суд.",
      'en': "Agreement drawn at notary; in disputed disputes via civil court application.",
    },
    cost: {
      'uz_lat': "Har bir bo'lingan obyekt uchun BHMning 1 baravari",
      'uz_cyr': "Ҳар бир бўлинган объект учун БҲМнинг 1 баравари",
      'ru': "По 1 БРВ за каждый отдельный сформированный объект",
      'en': "1 BCU per segregated cadastral unit",
    },
    timeframe: {
      'uz_lat': "5 ish kuni",
      'uz_cyr': "5 иш куни",
      'ru': "5 рабочих дней",
      'en': "5 working days",
    },
  ),

  // 8-Xizmat
  CadastreService(
    id: 8,
    icon: Icons.square_foot_outlined,
    title: {
      'uz_lat': "8. Maydoni va xonalar ekspozitsiyasi ma'lumotnomasi",
      'uz_cyr': "8. Майдони ва хоналар экспозицияси маълумотномаси",
      'ru': "8. Справка о площади и экспликации помещений",
      'en': "8. Area and Floor Explication Certificate",
    },
    summary: {
      'uz_lat': "Uydagi xonalar soni va ularning aniq maydonlari ko'rsatilgan qisqa texnik tasdiqnoma.",
      'uz_cyr': "Уйдаги хоналар сони ва уларнинг аниқ майдонлари кўрсатилган қисқа техник тасдиқнома.",
      'ru': "Справка с точным перечнем и квадратурой всех внутренних комнат и пристроек.",
      'en': "Official extract showing exact count and dimensions of all designated rooms.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Kadastr pasporti"],
      'uz_cyr': ["ID-карта", "Кадастр паспорти"],
      'ru': ["ID-карта", "Кадастровый паспорт"],
      'en': ["ID card", "Cadastral passport"],
    },
    missingDocsGuide: {
      'uz_lat': "Kadastr ma'lumotlari bazadan tekshiriladi; kerak bo'lsa qayta o'lchov qilinadi.",
      'uz_cyr': "Кадастр маълумотлари базадан текширилади; керак бўлса қайта ўлчов қилинади.",
      'ru': "Сведения запрашиваются онлайн через базу данных кадастра.",
      'en': "Extracted directly from digital cadastral registries.",
    },
    cost: {
      'uz_lat': "BHMning 20 foizi",
      'uz_cyr': "БҲМнинг 20 фоизи",
      'ru': "20% от БРВ",
      'en': "20% of BCU",
    },
    timeframe: {
      'uz_lat': "1-2 ish kuni",
      'uz_cyr': "1-2 иш куни",
      'ru': "1-2 рабочих дня",
      'en': "1-2 working days",
    },
  ),

  // 9-Xizmat
  CadastreService(
    id: 9,
    icon: Icons.pin_drop_outlined,
    title: {
      'uz_lat': "9. Yer chegaralarini belgilash (qoziq qoqish)",
      'uz_cyr': "9. Ер чегараларини белгилаш (қозиқ қоқиш)",
      'ru': "9. Вынос границ земельного участка в натуру",
      'en': "9. Demarcation of Land Boundaries",
    },
    summary: {
      'uz_lat': "Yer maydoni qayerdan boshlanib qayerda tugashini mutaxassis tomonidan joyida aniqlash.",
      'uz_cyr': "Ер майдони қаердан бошланиб қаерда тугашини мутахассис томонидан жойида аниқлаш.",
      'ru': "Определение фактических поворотных точек границ участка специалистом на местности.",
      'en': "On-site marking of turning point coordinates and perimeter boundary pillars.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Yer ajratish qarori yoki toposurat chizmasi"],
      'uz_cyr': ["ID-карта", "Ер ажратиш қарори ёки топосурат чизмаси"],
      'ru': ["ID-карта", "Решение о выделении земли или топографический план"],
      'en': ["ID card", "Land allocation deed or topographic survey plan"],
    },
    missingDocsGuide: {
      'uz_lat': "Birlamchi yer yig'majildi — Kadastrlar palatasining tuman filial arxividan ko'tariladi.",
      'uz_cyr': "Бирламчи ер йиғмажилди — Кадастрлар палатасининг туман филиал архивидан кўтарилади.",
      'ru': "Земельно-кадастровое дело запрашивается из архива кадастровой палаты.",
      'en': "Land survey blueprints retrieved from District Cadastral Branch Archive.",
    },
    cost: {
      'uz_lat': "Nuqtalar (qoziqlar) soniga qarab shartnoma asosida",
      'uz_cyr': "Нуқталар (қозиқлар) сонига қараб шартнома асосида",
      'ru': "На договорной основе в зависимости от количества координатных точек",
      'en': "Contract-based depending on coordinate boundary pegs",
    },
    timeframe: {
      'uz_lat': "3 ish kuni",
      'uz_cyr': "3 иш куни",
      'ru': "3 рабочих дня",
      'en': "3 working days",
    },
  ),

  // 10-Xizmat
  CadastreService(
    id: 10,
    icon: Icons.delete_sweep_outlined,
    title: {
      'uz_lat': "10. Bino buzilgani sababli hisobdan chiqarish",
      'uz_cyr': "10. Бино бузилгани сабабли ҳисобдан чиқариш",
      'ru': "10. Снятие с учета снесенного объекта",
      'en': "10. Deregistration of Demolished Building",
    },
    summary: {
      'uz_lat': "Eski bino butunlay buzilganda ortiqcha soliq to'lamaslik uchun uni hisobdan o'chirish.",
      'uz_cyr': "Эски бино бутунлай бузилганда ортиқча солиқ тўламаслик учун уни ҳисобдан ўчириш.",
      'ru': "Аннулирование записи в кадастре о снесенном здании во избежание начисления налогов.",
      'en': "Cancelling cadastral records of destroyed structures to discontinue tax accruals.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Bino buzilganligi to'g'risida vakolatli dalolatnoma"],
      'uz_cyr': ["ID-карта", "Бино бузилганлиги тўғрисида ваколатли далолатнома"],
      'ru': ["ID-карта", "Акт о сносе строения уполномоченной комиссией"],
      'en': ["ID card", "Official building demolition validation act"],
    },
    missingDocsGuide: {
      'uz_lat': "Dalolatnoma tuman hokimligi komissiyasi va mahalla fuqarolar yig'ini vakillari tomonidan tuziladi.",
      'uz_cyr': "Далолатнома туман ҳокимлиги комиссияси ва маҳалла фуқаролар йиғини вакиллари томонидан тузилади.",
      'ru': "Акт составляется с участием представителей районного хокимията и махаллинского комитета.",
      'en': "Act executed by district municipality commission and local neighborhood committee.",
    },
    cost: {
      'uz_lat': "Bepul",
      'uz_cyr': "Бепул",
      'ru': "Бесплатно",
      'en': "Free",
    },
    timeframe: {
      'uz_lat': "2 ish kuni",
      'uz_cyr': "2 иш куни",
      'ru': "2 рабочих дня",
      'en': "2 working days",
    },
  ),

  // 11-Xizmat
  CadastreService(
    id: 11,
    icon: Icons.home_work_outlined,
    title: {
      'uz_lat': "11. Uy-joy mavjud emasligi haqida ma'lumotnoma",
      'uz_cyr': "11. Уй-жой мавжуд эмаслиги ҳақида маълумотнома",
      'ru': "11. Справка об отсутствии жилья в собственности",
      'en': "11. Non-Property Ownership Certificate",
    },
    summary: {
      'uz_lat': "Fuqaroning nomida turar joy yo'qligini subsidiya yoki ijtimoiy dasturlar uchun tasdiqlash.",
      'uz_cyr': "Фуқаронинг номида турар жой йўқлигини субсидия ёки ижтимоий дастурлар учун тасдиқлаш.",
      'ru': "Подтверждение факта отсутствия недвижимости для оформления субсидий или кредитов.",
      'en': "Attesting the absence of registered real estate property for subsidies and welfare.",
    },
    requiredDocs: {
      'uz_lat': ["Faqat ID-karta (JShShIR raqami)"],
      'uz_cyr': ["Фақат ID-карта (ЖШШИР рақами)"],
      'ru': ["Только паспорт / ID-карта (ПИНФЛ)"],
      'en': ["Personal ID Card / PINFL only"],
    },
    missingDocsGuide: {
      'uz_lat': "my.gov.uz portali orqali hech qanday qog'ozsiz bir necha daqiqada avtomatik shakllanadi.",
      'uz_cyr': "my.gov.uz портали орқали ҳеч қандай қоғозсиз бир неча дақиқада автоматик шаклланади.",
      'ru': "Формируется онлайн за пару минут через портал my.gov.uz без справок.",
      'en': "Instantly generated electronically on my.gov.uz without physical papers.",
    },
    cost: {
      'uz_lat': "BHMning 4.5 foizi (my.gov.uz da 10% chegirma bor)",
      'uz_cyr': "БҲМнинг 4.5 фоизи (my.gov.uz да 10% чегирма бор)",
      'ru': "4.5% от БРВ (со скидкой 10% на my.gov.uz)",
      'en': "4.5% of BCU (10% discount on my.gov.uz)",
    },
    timeframe: {
      'uz_lat': "Avtomatik (15 daqiqada)",
      'uz_cyr': "Автоматик (15 дақиқада)",
      'ru': "Автоматически (в течение 15 минут)",
      'en': "Automated (within 15 minutes)",
    },
  ),

  // 12-Xizmat
  CadastreService(
    id: 12,
    icon: Icons.gavel_outlined,
    title: {
      'uz_lat': "12. Mulk taqiqlanganmi (hatch) tekshirish",
      'uz_cyr': "12. Мулк тақиқланганми (ҳатч) текшириш",
      'ru': "12. Справка о наличии/отсутствии ареста",
      'en': "12. Encumbrance and Arrest Status Check",
    },
    summary: {
      'uz_lat': "Uyni sotib olishdan oldin garov, taqiq yoki sud xatlovi yo'qligini tekshirib olish.",
      'uz_cyr': "Уйни сотиб олишдан олдин гаров, тақиқ ёки суд ҳатлови йўқлигини текшириб олиш.",
      'ru': "Проверка наличия арестов со стороны судов, БПИ или банковского залога перед сделкой.",
      'en': "Checking for bailiffs, judicial seizures, or bank mortgages prior to sale agreements.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Mulkning kadastr raqami"],
      'uz_cyr': ["ID-карта", "Мулкнинг кадастр рақами"],
      'ru': ["ID-карта", "Кадастровый номер имущества"],
      'en': ["ID card", "Cadastre identifier number"],
    },
    missingDocsGuide: {
      'uz_lat': "Taqiq aniqlansa — taqiq qo'ygan MIB bo'limi yoki tegishli tijorat bankiga murojaat qilinadi.",
      'uz_cyr': "Тақиқ аниқланса — тақиқ қўйган МИБ бўлими ёки тегишли тижорат банкига мурожаат қилинади.",
      'ru': "При наличии ареста необходимо обратиться в наложивший его орган (БПИ или банк).",
      'en': "If arrest exists — contact issuing Enforcement Bureau (MIB) or commercial bank.",
    },
    cost: {
      'uz_lat': "BHMning 10 foizi",
      'uz_cyr': "БҲМнинг 10 фоизи",
      'ru': "10% от БРВ",
      'en': "10% of BCU",
    },
    timeframe: {
      'uz_lat': "Real vaqt rejimida (1 kunda)",
      'uz_cyr': "Реал вақт режимида (1 кунда)",
      'ru': "В режиме реального времени (до 1 дня)",
      'en': "Real-time (within 1 day)",
    },
  ),

  // 13-Xizmat
  CadastreService(
    id: 13,
    icon: Icons.history_edu_outlined,
    title: {
      'uz_lat': "13. Ko'chmas mulk tarixi bo'yicha arxiv ma'lumotnomasi",
      'uz_cyr': "13. Кўчмас мулк тарихи бўйича архив маълумотномаси",
      'ru': "13. Архивные сведения об истории объекта",
      'en': "13. Cadastral Archive History Report",
    },
    summary: {
      'uz_lat': "Uy o'tmishda kimlarga tegishli bo'lganligi va qachon oldi-sotdi qilinganini aniqlash.",
      'uz_cyr': "Уй ўтмишда кимларга тегишли бўлганлиги ва қачон олди-сотди қилинганини аниқлаш.",
      'ru': "Предоставление выписки о предыдущих владельцах и переходах прав собственности.",
      'en': "Providing retrospective records regarding preceding title holders and sales.",
    },
    requiredDocs: {
      'uz_lat': ["Mulk egasining ID-kartasi", "Kadastr raqami"],
      'uz_cyr': ["Мулк эгасининг ID-картаси", "Кадастр рақами"],
      'ru': ["ID-карта собственника", "Кадастровый номер"],
      'en': ["Owner ID card", "Cadastre number"],
    },
    missingDocsGuide: {
      'uz_lat': "Idoraviy kadastr arxividan yoki tuman davlat arxividan xodimlar tomonidan ko'tariladi.",
      'uz_cyr': "Идоравий кадастр архивидан ёки туман давлат архивидан ходимлар томонидан кўтарилади.",
      'ru': "Поднимается сотрудниками из ведомственного архива кадастровой палаты.",
      'en': "Processed directly by archivists at Regional Cadastral State Archives.",
    },
    cost: {
      'uz_lat': "BHMning 20 foizi",
      'uz_cyr': "БҲМнинг 20 фоизи",
      'ru': "20% от БРВ",
      'en': "20% of BCU",
    },
    timeframe: {
      'uz_lat': "3 ish kuni",
      'uz_cyr': "3 иш куни",
      'ru': "3 рабочих дня",
      'en': "3 working days",
    },
  ),

  // 14-Xizmat
  CadastreService(
    id: 14,
    icon: Icons.qr_code_2_outlined,
    title: {
      'uz_lat': "14. Reestrdan elektron ko'chirma (vypiska)",
      'uz_cyr': "14. Реестрдан электрон кўчирма (выписка)",
      'ru': "14. Электронная выписка из госреестра",
      'en': "14. Electronic Registry Extract",
    },
    summary: {
      'uz_lat': "Mulk huquqi davlat reyestridan o'tganini tasdiqlovchi rasmiy QR-kodli elektron ma'lumotnoma.",
      'uz_cyr': "Мулк ҳуқуқи давлат реестридан ўтганини тасдиқловчи расмий QR-кодли электрон маълумотнома.",
      'ru': "Официальная выписка с QR-кодом, подтверждающая право собственности на объект.",
      'en': "Official QR-coded extract legally confirming registered property ownership.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Kadastr raqami"],
      'uz_cyr': ["ID-карта", "Кадастр рақами"],
      'ru': ["ID-карта", "Кадастровый номер"],
      'en': ["ID card", "Cadastral number"],
    },
    missingDocsGuide: {
      'uz_lat': "my.gov.uz portali orqali mulkdorning shaxsiy kabinetidan bir zumda olinadi.",
      'uz_cyr': "my.gov.uz портали орқали мулкдорнинг шахсий кабинетидан бир зумда олинади.",
      'ru': "Формируется моментально в персональном кабинете портала my.gov.uz.",
      'en': "Instantly retrieved via registered account on national portal my.gov.uz.",
    },
    cost: {
      'uz_lat': "BHMning 5 foizi (elektron olinganda chegirma mavjud)",
      'uz_cyr': "БҲМнинг 5 фоизи (электрон олинганда чегирма мавжуд)",
      'ru': "5% от БРВ",
      'en': "5% of BCU",
    },
    timeframe: {
      'uz_lat': "15 daqiqa (avtomat)",
      'uz_cyr': "15 дақиқа (автомат)",
      'ru': "15 минут (онлайн)",
      'en': "15 minutes (automated)",
    },
  ),

  // 15-Xizmat
  CadastreService(
    id: 15,
    icon: Icons.calculate_outlined,
    title: {
      'uz_lat': "15. Inventarizatsiya (soliq) qiymati ma'lumotnomasi",
      'uz_cyr': "15. Инвентаризация (солиқ) қиймати маълумотномаси",
      'ru': "15. Справка об инвентаризационной стоимости",
      'en': "15. Cadastral Tax Valuation Certificate",
    },
    summary: {
      'uz_lat': "Mulk solig'i hisoblash uchun uyning rasmiy baholangan davlat qiymatini aniqlash.",
      'uz_cyr': "Мулк солиғи ҳисоблаш учун уйнинг расмий баҳоланган давлат қийматини аниқлаш.",
      'ru': "Справка с утвержденной кадастровой стоимостью жилья для исчисления налогов.",
      'en': "Valuation certificate outlining base property value for regional tax liabilities.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Kadastr pasporti"],
      'uz_cyr': ["ID-карта", "Кадастр паспорти"],
      'ru': ["ID-карта", "Кадастровый паспорт"],
      'en': ["ID card", "Cadastral passport"],
    },
    missingDocsGuide: {
      'uz_lat': "Kadastr palatasi tuman filialidan yoki soliq organi bazasidan olinadi.",
      'uz_cyr': "Кадастр палатаси туман филиалидан ёки солиқ органи базасидан олинади.",
      'ru': "Предоставляется палатой кадастра или налоговой инспекцией.",
      'en': "Issued through District Cadastre Chambers or National Tax Committee database.",
    },
    cost: {
      'uz_lat': "BHMning 10 foizi",
      'uz_cyr': "БҲМнинг 10 фоизи",
      'ru': "10% от БРВ",
      'en': "10% of BCU",
    },
    timeframe: {
      'uz_lat': "1 ish kuni",
      'uz_cyr': "1 иш куни",
      'ru': "1 рабочий день",
      'en': "1 working day",
    },
  ),

  // 16-Xizmat
  CadastreService(
    id: 16,
    icon: Icons.handshake_outlined,
    title: {
      'uz_lat': "16. Mulk ijarasi huquqini ro'yxatdan o'tkazish",
      'uz_cyr': "16. Мулк ижараси ҳуқуқини рўйхатдан ўтказиш",
      'ru': "16. Регистрация договора аренды недвижимости",
      'en': "16. Leasehold Encumbrance Registration",
    },
    summary: {
      'uz_lat': "Uzoq muddatli uy yoki bino ijara shartnomasini kadastr reestriga kiritish.",
      'uz_cyr': "Узоқ муддатли уй ёки бино ижара шартномасини кадастр реестрига киритиш.",
      'ru': "Внесение долгосрочного договора аренды нежилого или жилого фонда в реестр.",
      'en': "Recording formal real estate lease agreements in the centralized public registry.",
    },
    requiredDocs: {
      'uz_lat': ["Tomonlarning ID-kartalari", "Notarial tasdiqlangan ijara shartnomasi", "Kadastr pasporti"],
      'uz_cyr': ["Томонларнинг ID-карталари", "Нотариал тасдиқланган ижара шартномаси", "Кадастр паспорти"],
      'ru': ["Паспорта арендатора и арендодателя", "Нотариальный договор аренды", "Кадастровый паспорт"],
      'en': ["Parties' ID cards", "Notarized lease agreement", "Cadastral passport"],
    },
    missingDocsGuide: {
      'uz_lat': "Ijara shartnomasi rasmiylashtirilgan notarial idoradan qayta tiklanadi.",
      'uz_cyr': "Ижара шартномаси расмийлаштирилган нотариал идорадан қайта тикланади.",
      'ru': "Копия договора запрашивается у нотариуса, заверявшего сделку.",
      'en': "Lease deed is verified via the notary system or ijara.soliq.uz system.",
    },
    cost: {
      'uz_lat': "BHMning 25 foizi",
      'uz_cyr': "БҲМнинг 25 фоизи",
      'ru': "25% от БРВ",
      'en': "25% of BCU",
    },
    timeframe: {
      'uz_lat': "2 ish kuni",
      'uz_cyr': "2 иш куни",
      'ru': "2 рабочих дня",
      'en': "2 working days",
    },
  ),

  // 17-Xizmat
  CadastreService(
    id: 17,
    icon: Icons.family_restroom_outlined,
    title: {
      'uz_lat': "17. Meros huquqi asosida kadastrni rasmiylashtirish",
      'uz_cyr': "17. Мерос ҳуқуқи асосида кадастрни расмийлаштириш",
      'ru': "17. Переоформление кадастра по наследству",
      'en': "17. Inheritance Title Re-registration",
    },
    summary: {
      'uz_lat': "Vafot etgan yaqiningizdan qolgan uyni notarius guvohnomasi bilan o'z nomingizga o'tkazish.",
      'uz_cyr': "Вафот этган яқинингиздан қолган уйни нотариус гувоҳномаси билан ўз номингизга ўтказиш.",
      'ru': "Перевод недвижимости на имя наследника на основании свидетельства о праве на наследство.",
      'en': "Re-registering decedent's property to heir using notary inheritance cert.",
    },
    requiredDocs: {
      'uz_lat': ["Merosxo'r ID-kartasi", "Merosga bo'lgan huquq to'g'risidagi guvohnoma", "Eski kadastr hujjati"],
      'uz_cyr': ["Меросхўр ID-картаси", "Меросга бўлган ҳуқуқ тўғрисидаги гувоҳнома", "Эски кадастр ҳужжати"],
      'ru': ["Паспорт наследника", "Свидетельство о праве на наследство", "Старый кадастровый паспорт"],
      'en': ["Heir ID card", "Certificate of right to inheritance", "Old cadastral document"],
    },
    missingDocsGuide: {
      'uz_lat': "Meros guvohnomasi davlat notarial idorasidan; o'lim guvohnomasi FHDY (ZAGS)dan olinadi.",
      'uz_cyr': "Мерос гувоҳномаси давлат нотариал идорасидан; ўлим гувоҳномаси ФҲДЁ (ЗАГС)дан олинади.",
      'ru': "Свидетельство о наследстве выдается нотариусом; свидетельство о смерти — органами ЗАГС.",
      'en': "Inheritance certificate from notary; death certificate from Civil Registry (ZAGS).",
    },
    cost: {
      'uz_lat': "BHMning 1 baravari",
      'uz_cyr': "БҲМнинг 1 баравари",
      'ru': "1 БРВ",
      'en': "1 BCU",
    },
    timeframe: {
      'uz_lat': "3 ish kuni",
      'uz_cyr': "3 иш куни",
      'ru': "3 рабочих дня",
      'en': "3 working days",
    },
  ),

  // 18-Xizmat
  CadastreService(
    id: 18,
    icon: Icons.badge_outlined,
    title: {
      'uz_lat': "18. Egasi F.I.Sh. o'zgarganda yangilash",
      'uz_cyr': "18. Эгаси Ф.И.Ш. ўзгарганда янгилаш",
      'ru': "18. Обновление данных при смене Ф.И.О.",
      'en': "18. Record Update on Name/Surname Change",
    },
    summary: {
      'uz_lat': "Familiyangiz yoki ismingiz o'zgarganda (masalan to'ydan so'ng) kadastr hujjatini to'g'rilash.",
      'uz_cyr': "Фамилиянгиз ёки исмингиз ўзгарганда (масалан тўйдан сўнг) кадастр ҳужжатини тўғрилаш.",
      'ru': "Внесение корректировок в базу данных при смене фамилии или имени собственника.",
      'en': "Synchronizing cadastral registry entries with newly issued surname/passport data.",
    },
    requiredDocs: {
      'uz_lat': ["Yangi ID-karta", "FHDY bergan F.I.Sh. o'zgargani haqidagi guvohnoma", "Kadastr pasporti"],
      'uz_cyr': ["Янги ID-карта", "ФҲДЁ берган Ф.И.Ш. ўзгаргани ҳақидаги гувоҳнома", "Кадастр паспорти"],
      'ru': ["Новый паспорт / ID", "Свидетельство о перемене Ф.И.О. из ЗАГСа", "Кадастровый паспорт"],
      'en': ["New ID card", "Civil Registry certificate of name/surname amendment", "Cadastre passport"],
    },
    missingDocsGuide: {
      'uz_lat': "Guvohnoma nusxasi FHDY arxividan yoki my.gov.uz orqali buyurtma qilib olinadi.",
      'uz_cyr': "Гувоҳнома нусхаси ФҲДЁ архивидан ёки my.gov.uz орқали буюртма қилиб олинади.",
      'ru': "Повторное свидетельство выдается отделами ЗАГС или через портал my.gov.uz.",
      'en': "Duplicate certificate obtained from Civil Registry (ZAGS) or my.gov.uz.",
    },
    cost: {
      'uz_lat': "BHMning 10 foizi",
      'uz_cyr': "БҲМнинг 10 фоизи",
      'ru': "10% от БРВ",
      'en': "10% of BCU",
    },
    timeframe: {
      'uz_lat': "1 ish kuni",
      'uz_cyr': "1 иш куни",
      'ru': "1 рабочий день",
      'en': "1 working day",
    },
  ),

  // 19-Xizmat
  CadastreService(
    id: 19,
    icon: Icons.verified_user_outlined,
    title: {
      'uz_lat': "19. Yerni xususiylashtirish guvohnomasi",
      'uz_cyr': "19. Ерни хусусийлаштириш гувоҳномаси",
      'ru': "19. Выдача госакта на приватизацию земли",
      'en': "19. Land Privatization Ownership Certificate",
    },
    summary: {
      'uz_lat': "Bino joylashgan yer uchastkasini davlatdan sotib olib, xususiy mulk qilib rasmiylashtirish.",
      'uz_cyr': "Бино жойлашган ер участкасини давлатдан сотиб олиб, хусусий мулк қилиб расмийлаштириш.",
      'ru': "Оформление государственного акта частной собственности на выкупленный земельный участок.",
      'en': "Formal registration of acquired municipal plot into statutory private real estate.",
    },
    requiredDocs: {
      'uz_lat': ["Ariza", "ID-karta", "Xususiylashtirish to'lovi to'langan kvitansiya", "Bino kadastri"],
      'uz_cyr': ["Ариза", "ID-карта", "Хусусийлаштириш тўлови тўланган квитанция", "Бино кадастри"],
      'ru': ["Заявление", "ID-карта", "Чек об оплате выкупа земли", "Кадастровый паспорт строения"],
      'en': ["Application", "ID card", "Proof of buyout payment receipt", "Structure cadastre"],
    },
    missingDocsGuide: {
      'uz_lat': "Xususiylashtirish orderi Davlat aktivlarini boshqarish agentligidan beriladi.",
      'uz_cyr': "Хусусийлаштириш ордери Давлат активларини бошқариш агентлигидан берилади.",
      'ru': "Выдается территориальным управлением Агентства по управлению госактивами.",
      'en': "Order issued by State Assets Management Agency (DABA).",
    },
    cost: {
      'uz_lat': "BHMning 50 foizi (yerni sotib olish to'lovidan tashqari)",
      'uz_cyr': "БҲМнинг 50 фоизи (ерни сотиб олиш тўловидан ташқари)",
      'ru': "50% от БРВ (без учета выкупной стоимости земли)",
      'en': "50% of BCU (administrative fee excluding land buyout price)",
    },
    timeframe: {
      'uz_lat': "3 ish kuni",
      'uz_cyr': "3 иш куни",
      'ru': "3 рабочих дня",
      'en': "3 working days",
    },
  ),

  // 20-Xizmat
  CadastreService(
    id: 20,
    icon: Icons.gavel_sharp,
    title: {
      'uz_lat': "20. Auksionda yutgan yerni rasmiylashtirish",
      'uz_cyr': "20. Аукционда ютган ерни расмийлаштириш",
      'ru': "20. Оформление выигранного на аукционе участка",
      'en': "20. E-Auction Land Title Registration",
    },
    summary: {
      'uz_lat': "E-auksion orqali olingan yerning bayonnomasini kadastr tizimida ro'yxatdan o'tkazish.",
      'uz_cyr': "E-auksion орқали олинган ернинг баённомасини кадастр тизимида рўйхатдан ўтказиш.",
      'ru': "Оформление кадастровых прав на основании итогового протокола торгов e-auksion.uz.",
      'en': "Registration of cadastral ownership based on concluding e-auction.uz protocol.",
    },
    requiredDocs: {
      'uz_lat': ["Auksion g'olibi ID-kartasi", "Auksion yakuniy bayonnomasi", "To'lov cheki"],
      'uz_cyr': ["Аукцион ғолиби ID-картаси", "Аукцион якуний баённомаси", "Тўлов чеки"],
      'ru': ["ID-карта победителя", "Итоговый протокол аукциона", "Чек об оплате лота"],
      'en': ["Winner ID card", "Concluding auction award protocol", "Payment confirmation"],
    },
    missingDocsGuide: {
      'uz_lat': "Bayonnoma va to'lov hujjati e-auksion.uz tizimidagi shaxsiy xonadan olinadi.",
      'uz_cyr': "Баённома ва тўлов ҳужжати e-auksion.uz тизимидаги шахсий хонадан олинади.",
      'ru': "Протокол скачивается из личного кабинета электронной площадки e-auksion.uz.",
      'en': "Protocol downloaded directly via e-auksion.uz portal user dashboard.",
    },
    cost: {
      'uz_lat': "BHMning 1 baravari",
      'uz_cyr': "БҲМнинг 1 баравари",
      'ru': "1 БРВ",
      'en': "1 BCU",
    },
    timeframe: {
      'uz_lat': "2 ish kuni",
      'uz_cyr': "2 иш куни",
      'ru': "2 рабочих дня",
      'en': "2 working days",
    },
  ),

  // 21-Xizmat
  CadastreService(
    id: 21,
    icon: Icons.price_check_outlined,
    title: {
      'uz_lat': "21. Kadastr qiymatiga e'tiroz arizasi",
      'uz_cyr': "21. Кадастр қийматига эътироз аризаси",
      'ru': "21. Обжалование кадастровой стоимости",
      'en': "21. Cadastral Valuation Appeal",
    },
    summary: {
      'uz_lat': "Uyga ortiqcha soliq hisoblanmasligi uchun noto'g'ri belgilangan kadastr narxini qayta ko'rib chiqishni so'rash.",
      'uz_cyr': "Уйга ортиқча солиқ ҳисобланмаслиги учун нотўғри белгиланган кадастр нархини қайта кўриб чиқишни сўраш.",
      'ru': "Подача заявления на пересмотр завышенной кадастровой стоимости для снижения налога.",
      'en': "Submitting formal contestation against overvalued cadastral estimations to optimize tax.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Kadastr pasporti", "Asoslangan e'tiroz xati", "Mustaqil baholash hisoboti (agar bo'lsa)"],
      'uz_cyr': ["ID-карта", "Кадастр паспорти", "Асосланган эътироз хати", "Мустақил баҳолаш ҳисоботи (агар бўлса)"],
      'ru': ["ID-карта", "Кадастровый паспорт", "Обоснованная претензия", "Отчет независимой оценки (при наличии)"],
      'en': ["ID card", "Cadastral passport", "Substantiated grievance letter", "Independent valuation report"],
    },
    missingDocsGuide: {
      'uz_lat': "Baholash hujjati litsenziyalangan xususiy baholovchi kompaniyalar tomonidan tayyorlanadi.",
      'uz_cyr': "Баҳолаш ҳужжати лицензияланган хусусий баҳоловчи компаниялар томонидан тайёрланади.",
      'ru': "Независимая оценка заказывается в сертифицированных оценочных организациях.",
      'en': "Independent reports commissioned through certified commercial property appraisers.",
    },
    cost: {
      'uz_lat': "Ariza berish bepul",
      'uz_cyr': "Ариза бериш бепул",
      'ru': "Подача заявления бесплатно",
      'en': "Filing grievance is free",
    },
    timeframe: {
      'uz_lat': "10 ish kuni",
      'uz_cyr': "10 иш куни",
      'ru': "10 рабочих дней",
      'en': "10 working days",
    },
  ),

  // 22-Xizmat
  CadastreService(
    id: 22,
    icon: Icons.support_agent_outlined,
    title: {
      'uz_lat': "22. Huquqiy maslahat va murojaat yo'llash",
      'uz_cyr': "22. Ҳуқуқий маслаҳат ва мурожаат йўллаш",
      'ru': "22. Правовая консультация и обращение",
      'en': "22. Legal Guidance & Public Inquiries",
    },
    summary: {
      'uz_lat': "Kadastr hujjatlarini qayerdan boshlashni bilmaganda maslahat olish yoki korrupsiya bo'yicha murojaat qilish.",
      'uz_cyr': "Кадастр ҳужжатларини қаердан бошлашни билмаганда маслаҳат олиш ёки коррупция бўйича мурожаат қилиш.",
      'ru': "Первичная консультация по оформлению документов или жалоба на коррупционные проявления.",
      'en': "Primary legal orientation or filing official complaints on corruption vulnerabilities.",
    },
    requiredDocs: {
      'uz_lat': ["ID-karta", "Mavjud hujjatlar nusxasi", "Yozma ariza"],
      'uz_cyr': ["ID-карта", "Мавжуд ҳужжатлар нусхаси", "Ёзма ариза"],
      'ru': ["ID-карта", "Копии имеющихся на руках документов", "Письменное обращение"],
      'en': ["ID card", "Copies of available documentation", "Written inquiry statement"],
    },
    missingDocsGuide: {
      'uz_lat': "Prezident virtual qabulxonasi (pm.gov.uz) yoki Kadastr agentligining 1097 ishonch telefoni orqali olinadi.",
      'uz_cyr': "Президент виртуал қабулхонаси (pm.gov.uz) ёки Кадастр агентлигининг 1097 ишонч телефони орқали олинади.",
      'ru': "Через виртуальную приемную pm.gov.uz или круглосуточную горячую линию кадастра 1097.",
      'en': "Via pm.gov.uz portal or Cadastre Agency dedicated national hotline 1097.",
    },
    cost: {
      'uz_lat': "Mutlaqo bepul",
      'uz_cyr': "Мутлақо бепул",
      'ru': "Абсолютно бесплатно",
      'en': "Completely Free",
    },
    timeframe: {
      'uz_lat': "Shu kunning o'zida yoki 15 kun murojaat ko'rib chiqish muddati",
      'uz_cyr': "Шу куннинг ўзида ёки 15 кун мурожаат кўриб чиқиш муддати",
      'ru': "В день обращения (консультация) или до 15 дней (жалоба)",
      'en': "Same-day consultation or up to 15 days inquiry assessment",
    },
  ),
];