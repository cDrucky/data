library(ggplot2)

data <- read.csv(file="D:/School/Data Mining/flying-etiquette.csv",header = TRUE, sep=",")



data <- data[!(data$How.often.do.you.travel.by.plane. =="Never" | data$Do.you.ever.recline.your.seat.when.you.fly. =="" | is.na(data$Is.itrude.to.recline.your.seat.on.a.plane.)),]
data$In.a.row.of.three.seats..who.should.get.to.use.the.two.arm.rests. <- NULL
data$In.a.row.of.two.seats..who.should.get.to.use.the.middle.arm.rest. <- NULL
data$Who.should.have.control.over.the.window.shade. <- NULL
data$Is.itrude.to.move.to.an.unsold.seat.on.a.plane. <- NULL
data$Generally.speaking..is.it.rude.to.say.more.than.a.few.words.tothe.stranger.sitting.next.to.you.on.a.plane. <- NULL
data$Under.normal.circumstances..does.a.person.who.reclines.their.seat.during.a.flight.have.any.obligation.to.the.person.sitting.behind.them. <- NULL
data$Is.it.rude.to.ask.someone.to.switch.seats.with.you.in.order.to.be.closer.to.friends. <- NULL
data$Is.itrude.to.ask.someone.to.switch.seats.with.you.in.order.to.be.closer.to.family. <- NULL
data$Is.it.rude.to.wake.a.passenger.up.if.you.are.trying.to.go.to.the.bathroom. <- NULL
data$Is.itrude.to.wake.a.passenger.up.if.you.are.trying.to.walk.around. <- NULL
data$In.general..is.itrude.to.bring.a.baby.on.a.plane. <- NULL
data$In.general..is.it.rude.to.knowingly.bring.unruly.children.on.a.plane. <- NULL
data$Have.you.ever.used.personal.electronics.during.take.off.or.landing.in.violation.of.a.flight.attendant.s.direction. <- NULL
data$Have.you.ever.smoked.a.cigarette.in.an.airplane.bathroom.when.it.was.against.the.rules. <- NULL


rudeMen <- table(data$Is.itrude.to.recline.your.seat.on.a.plane.[which(data$Gender == "Male")])
barplot(rudeMen)
rudeWomen <- table(data$Is.itrude.to.recline.your.seat.on.a.plane.[which(data$Gender == "Female")])
barplot(rudeWomen)

p <- ggplot(data, aes(data$Is.itrude.to.recline.your.seat.on.a.plane.)) + geom_bar(aes(data$Gender))
