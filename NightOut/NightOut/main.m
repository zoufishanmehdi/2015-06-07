//
//  main.m
//  NightOut
//
//  Created by Elber Carneiro on 6/7/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <unistd.h>

struct Person {
    BOOL isACelebrity, isInTheBand, isRich, hasHellaSwag,
    invitedBySomeoneInside, hasBribeMoney, hasAppInAppStore,
    isBooleanMaster, hasEntertainingTshirt, dropsAPhatBeat,
    isSingle, isProgrammer;
};


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        struct Person joe;
        joe.isACelebrity = NO;
        joe.isInTheBand = NO;
        joe.isRich = NO;
        joe.hasHellaSwag = NO;
        joe.invitedBySomeoneInside = NO;
        joe.hasBribeMoney = NO;
        joe.hasAppInAppStore = NO;
        joe.isBooleanMaster = NO;
        joe.hasEntertainingTshirt = NO;
        joe.dropsAPhatBeat = NO;
        joe.isSingle = NO;
        joe.isProgrammer = NO;
        
        struct Person lisa;
        lisa.isACelebrity = NO;
        lisa.isInTheBand = YES;
        lisa.isRich = NO;
        lisa.hasHellaSwag = NO;
        lisa.invitedBySomeoneInside = NO;
        lisa.hasBribeMoney = NO;
        lisa.hasAppInAppStore = NO;
        lisa.isBooleanMaster = NO;
        lisa.hasEntertainingTshirt = NO;
        lisa.dropsAPhatBeat = NO;
        lisa.isSingle = NO;
        lisa.isProgrammer = NO;
        
        struct Person mark;
        mark.isACelebrity = NO;
        mark.isInTheBand = NO;
        mark.isRich = NO;
        mark.hasHellaSwag = YES;
        mark.invitedBySomeoneInside = YES;
        mark.hasBribeMoney = NO;
        mark.hasAppInAppStore = NO;
        mark.isBooleanMaster = NO;
        mark.hasEntertainingTshirt = NO;
        mark.dropsAPhatBeat = NO;
        mark.isSingle = NO;
        mark.isProgrammer = NO;
        
        struct Person sharon;
        sharon.isACelebrity = NO;
        sharon.isInTheBand = NO;
        sharon.isRich = NO;
        sharon.hasHellaSwag = NO;
        sharon.invitedBySomeoneInside = NO;
        sharon.hasBribeMoney = NO;
        sharon.hasAppInAppStore = YES;
        sharon.isBooleanMaster = YES;
        sharon.hasEntertainingTshirt = YES;
        sharon.dropsAPhatBeat = NO;
        sharon.isSingle = NO;
        sharon.isProgrammer = NO;
        
        struct Person madonna;
        madonna.isACelebrity = NO;
        madonna.isInTheBand = NO;
        madonna.isRich = NO;
        madonna.hasHellaSwag = NO;
        madonna.invitedBySomeoneInside = NO;
        madonna.hasBribeMoney = NO;
        madonna.hasAppInAppStore = NO;
        madonna.isBooleanMaster = NO;
        madonna.hasEntertainingTshirt = NO;
        madonna.dropsAPhatBeat = NO;
        madonna.isSingle = NO;
        madonna.isProgrammer = NO;
        
        struct Person gertrude;
        gertrude.isACelebrity = NO;
        gertrude.isInTheBand = NO;
        gertrude.isRich = NO;
        gertrude.hasHellaSwag = NO;
        gertrude.invitedBySomeoneInside = NO;
        gertrude.hasBribeMoney = NO;
        gertrude.hasAppInAppStore = NO;
        gertrude.isBooleanMaster = NO;
        gertrude.hasEntertainingTshirt = NO;
        gertrude.dropsAPhatBeat = NO;
        gertrude.isSingle = YES;
        gertrude.isProgrammer = YES;
        
        struct Person person = sharon;
        
        printf("You are headed out for the night. First stop: Club Chic.\n");
        sleep(2);
        
        // Exclusive club conditionals.
        if (person.isACelebrity || person.isInTheBand || person.isRich) {
            if(person.isACelebrity) {
                printf("You are a major celebrity. Nothing stands in your way.\n");
                sleep(2);
            } else if (person.isInTheBand) {
                printf("Your crappy retro band is playing tonight. The bouncer shows you the backstage door.\n");
                sleep(2);
            } else {
                printf("Money does buy happiness and you don't ever wait in line.\n");
                sleep(2);
            }
            printf("You're in the club! 1%% for life!\n");
        } else if ((person.hasHellaSwag && person.invitedBySomeoneInside) || person.hasBribeMoney) {
            if (person.hasHellaSwag && person.invitedBySomeoneInside) {
                printf("You've got swag and you surprise the bouncer because someone inside comes out to get you.\n");
                sleep(2);
            } else {
                printf("You brought enough money to bribe the bouncer.\n");
                sleep(2);
            }
            printf("You're in! Enjoy hanging out with the heroin chic!\n");
            sleep(2);
        
            
        // Cool hipster club conditionals
        } else if (person.hasAppInAppStore || person.isBooleanMaster || person.hasEntertainingTshirt || person.dropsAPhatBeat) {
            printf("You didn't get into the exclusive club. Next stop: Williamsburg!\n");
            sleep(2);
            if (person.hasAppInAppStore) {
                printf("You prove your cool by showing the bouncer your app in the App store.\n");
                sleep(2);
            }
            if (person.isBooleanMaster) {
                printf("You solve a ridiculously complex boolean expression that has been stumping the bouncer for months.\n");
                sleep(2);
            }
            if (person.hasEntertainingTshirt) {
                printf("Your T-shirt has a quote from 'The IT Crowd.' The bouncer giggles.\n");
                sleep(2);
            }
            printf("The bouncer lets you into the hipster Brooklyn joint that was your second choice.\n");
            sleep(2);
        } else {
            printf("You didn't make it into any of the clubs. You go see grandma.\n");
            sleep(2);
            printf("You're playing Uno with grandma. She makes good cookies.\n");
            sleep(2);
            if (person.isSingle) {
                printf("Grandma asks you over and over about settling down and makin' her some grandkids.\n");
                sleep(2);
            }
            if (person.isProgrammer) {
                printf("Grandma asks you why you don't have a real job.\n");
                sleep(2);
            }
        }
        printf("\n*****VICTORY*****");
        /*
         Scenario:
         You are going out for the night. You have a few options and you pursue
         them in order of interest.
         
         Plan A: Exclusive club
         
         Shoe In:
         Be a celebrity
         Be in the band
         Be rich
         
         Otherwise:
         "Hella Swag" and invited by someone who got in to the club.
         Enough money to buy off bouncer
         
         Plan B: Less exclusive / way cooler club
         
         Shoe In:
         - App in the App Store™
         - Must pass boolean logic riddle
         - Wearing a t-shirt that makes the bouncer mildly entertained
         - Drop a beat so hard that it literally brings down the house
         next door
         
         Plan C: Playing Uno w/ grandma
         
         - If you're single grandma keeps nagging you about settling down
         so that she can have some great-grand babies.
         - If you're programmer, grandma asks you why you don't have a real
         job.
         
         
         */
    }
    return 0;
}
