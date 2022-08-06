Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 757E958B5A9
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Aug 2022 14:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 467FE417B1;
	Sat,  6 Aug 2022 12:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 467FE417B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lo3boj6Oshk; Sat,  6 Aug 2022 12:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8229417B0;
	Sat,  6 Aug 2022 12:59:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8229417B0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACD581BF267
 for <devel@linuxdriverproject.org>; Sat,  6 Aug 2022 12:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87BD960AD6
 for <devel@linuxdriverproject.org>; Sat,  6 Aug 2022 12:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87BD960AD6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkQx0VmY8mqi for <devel@linuxdriverproject.org>;
 Sat,  6 Aug 2022 12:59:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1E2960ABB
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1E2960ABB
 for <devel@driverdev.osuosl.org>; Sat,  6 Aug 2022 12:59:17 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id gk3so9225817ejb.8
 for <devel@driverdev.osuosl.org>; Sat, 06 Aug 2022 05:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=qrdW9tau7JUgdKhwKD6yIGBj+3NdC6ZfOLa5OTMDvYA=;
 b=iIE71JqwCvG4+rmngGGjoVKi+h1PUUK1GW7lPgyLyeYQrDHrA9goe4B6b68sEgWFoY
 Df56mO3jkIJYYViaBHZnuWYOL8y8Jvu8JXWoeyuiolelOZ/oo9hGLiOkXTiEYzAkJyZo
 cK2FuS6xP87li4giB2AGchExicjupOFJcfVArVLXSMmzilgszIJxrZJaIo0KZBjMHzO8
 1J/TOe68oPI4u+3ZCnJ0uSGvxF17P0LbvyDM1cIF1pcRLVPdZEhJby+CbC8DubzfFUbn
 YmCiW+A7JKMs2rR7OTP5ewJsyS5g50IpO6n2WPsyT0r9v62qUmD/pcv0lGsrLbZ3n0Vc
 V1/g==
X-Gm-Message-State: ACgBeo2RWYBXfPsPviN0cTS8wilb2NU1tBoz7hyiIUMtnLmcQImr2TMg
 1BB8n/795TE1Vy+QfrjznsHztDF+JyMoNvppHEw=
X-Google-Smtp-Source: AA6agR65OtWzBBGUZnRvtBCOayvoWMTrs6ffzedLplVF2Gko+C6w/B7rzDo55zN2lFgXdmVPTKfqLUjG4l1VEK3G+i4=
X-Received: by 2002:a17:907:6930:b0:730:f00f:7ad2 with SMTP id
 rb48-20020a170907693000b00730f00f7ad2mr5347697ejc.389.1659790755625; Sat, 06
 Aug 2022 05:59:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3dca:0:0:0:0:0 with HTTP;
 Sat, 6 Aug 2022 05:59:14 -0700 (PDT)
From: "Mrs Lisa Edward." <hippolytepilabre@gmail.com>
Date: Sat, 6 Aug 2022 00:59:14 -1200
X-Google-Sender-Auth: 73X_B2LzVKyvTVvdANryJQpkltY
Message-ID: <CABQWLrrW6nS63zopz9zBAfW6nwd9kp1_X2c8Fubde_s51ET+yw@mail.gmail.com>
Subject: WITH DUE RESPECT.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
 :to:cc;
 bh=qrdW9tau7JUgdKhwKD6yIGBj+3NdC6ZfOLa5OTMDvYA=;
 b=MvsJSSJDz9H9uD2npAUNhuK4Gml/7SShDgODNKAqwnm9r3E+WnM1R+QvxpN2tdzwKN
 CTP8wzM7FwFM5Bx5k0wSTuz9GgT+dCU0srRo1jW4np5byi2zf4b3h3LYHRmg1uNe2iqE
 skofqAodBoM6TW+vbvz+ycCJHRa6iD4Mcv2EcIp7lPHZQU68oqlpFvEnSGR9Q5DKrj/h
 LIgHk0B53fC+8aKjpqNJspUnPNg+WnkqB41IHc2Bze8fxDeERkDqNq30gM7StIWsFW60
 r3rul8PDAVSbcTeDAEvE44eU/CWkGKAlfRMbFPLD2ZTtuBJx6ierlixHM6h/qGoqqk/D
 dfEg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=MvsJSSJD
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: mrslisaedward4@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings to you,

 Please forgive me for stressing you with my predicaments and am sorry
for  approaching you through this media.

I really like to have a good relationship with you, and I have a
special  reason why I decided to contact you because of the urgency of
my situation  here.I came across your e-mail contact prior to a
private search while in  need of your assistance.I decided to contact
you believing you will be  honest to fulfill my final wish before I
die.

I am Mrs Lisa Edward, 63 years, from USA, I am childless and am
suffering  from a pro-long critical cancer, my doctors confirmed I may
not live beyond  two months from now as my ill health has defiled all
forms of medical  treatment.

Since my days are numbered, I have decided willingly to fulfill my
long-time promise to donate you the sum ($5.000.000.00) million
dollars I  inherited from my late husband Mr. Edward Herbart, foreign
bank account  over years. I need a very honest person who can assist
in transfer of this money to his or her account and use the funds for
charity work of God while you use 50% for yourself. I want you to know
there is no risk involved; it
is 100% hitch free & safe.

If you are interested in assisting in getting this fund into your
accountfor a charity project to fulfill my promise before I die please
let me know immediately.

I will appreciate your utmost confidentiality as I wait for your reply.

Best Regards,
Mrs Lisa Edward.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
