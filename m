Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27233339EEB
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 16:29:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 972864E50D;
	Sat, 13 Mar 2021 15:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N12K469im3v9; Sat, 13 Mar 2021 15:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 394164BAEA;
	Sat, 13 Mar 2021 15:29:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 239DB1BF35A
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 15:29:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 135CC83163
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 15:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 78g_i8g_t1o0 for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 15:29:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ironportDMZ.econet.co.zw (smtp.econet.co.zw [77.246.51.158])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F6BB83026
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 15:29:07 +0000 (UTC)
IronPort-SDR: WQ0AT3hjEh1h855too+SDBDV3beWY85crYKPgrl6z30vcQQPi8VTyO9ptSj0JOQcvTJa7DlG9k
 ygfn8UZ8hJiqPtQscKzfXJpyoj1uWrZim565Sp8XDtyHMJrwrJCYDpCwiIa22OTFgZx3YhQnoG
 M8T09fKdc8K/mwquGroEjc8o4qo0CUI+YGmqDRsIarIEXfqc3n/GcSbfbAr267JZHGoYcJhJZA
 xZQpD5RI3keRC6vHE0q17TwBaO87ezL5V5YZlunHC9WgPRQxJbJfnvC82y8UrY8b9i2+vGdAd8
 6Iw=
IronPort-HdrOrdr: A9a23:jWTx7qCrzdbu75PlHejVtceALOonbusQ8zAX/mhLY1h8btGYm8
 eynP4SyB/zj3IrVGs9nM2bUZPsfVr1zrQwxYUKJ7+tUE3duGWuJJx/9oeK+VfdMgXE3Kpm2a
 9kGpIUNPTZEUV6gcHm4AOxDtYnx529/Lq1gPrFpk0DcShBYchbnmNEIyycFVB7QxQDOIEwE4
 CS6tECiz2rf3kWacrTPAh+Y8HoodrXmJX6JSMXHhJP0nj0sRqEyp7fVyKZ0BAXTi9Vzd4ZnV
 TtvgTl6syY082T5QTb0wbonvdrsfvnjuBOHcmdzvUSQw+c7DqAQKREd/m8sCsuoOepgWxa5O
 Xkhxs7Jcx85zfwUwiO0HzQ8jLt2jov9HPuoGXw6RWD0LrEbQk3BMZbiYVSfgGx0TtYgPhG3L
 tPzyalsfNsfHH9tR/w+sTSUFVSnle0yEBS5NI7tWBVUocVddZq3PQi1X5Sea1weR7S2cQOOs
 NJMObgoNZ6GGnqEEzxjy1G6vaLYlMPWiq3e2RqgL3k7xFm2Fp9z0ce2fUFmGYB+J8XW/B/lp
 b5G5UtuJVnbupTUJJFKI46MLqKI12Ibj+JHGabIVGiPqkbN3zKsI6f2sRK2MiaPLMP15c8g5
 LHTRdxsnMzYVvnDYm00IRM6Q2lehT9YR3djuVlo7RpsLz1Q7TmdQWFVVAVisOl59ESGNfSVf
 qfMI9fasWTbVfGKMJs5UnTSpNSIX4RXIk+odAgQW+DpcrNN8nDqvHbWOy7HsuoLR8UHkfERl
 cTVjn6I8tNqmqxXGXjvRTXU3TxPmTi4JNLFrTA9eR78vlJCqR89iwuzXip7MCCLjNP9oYsel
 FlHb/hmqSn4Uas+2Ll6HhoJwp9Ak5Z7K6IaQINmSY6d2fPNZoTsdSWfm5fmFGdIAVkcs/QGA
 lD43R7kJjHdqC49GQHMZaKI2iah3wcqDahVJEHgJCO4s/jZ9cdBpYiU6phKBXTG3VO6F5XgV
 YGTDVBal7UFzvoh6ngpocTHvvje951hxruBsJIt3TFtwG5qds0TnUWGx6iOPTnwzoGdn5xvB
 lc4qUfiL2PlXKEMm0kmtk1N1VKdSCwG7JJDAOMYa1OgbD1cARMTWOH7AbqzC0bSy7PzQE/l2
 bhJSqbdbXgGVxGoE1V1a7s7RdJbGmHRllxbXp7qIV5MmzDth9IoLS2T5v291HURkoJw+kbPj
 2ARTcJOAthy+q60wOvlC+YGW8rwYgvOeLhHK0uGoujrU+FGcmtr+UrDvVU9JFqOJTVvugHXf
 m2ViWVIDn7YtlZlzC9lzIAAm1ZuXMkmfTn1FnZ92C+xmc4GueXCk9hXasnL9aV6HXES/6E3I
 5it888ufK9PwzKG4S74JCSSwQGDBzdoWS7Fb517b9VuL8/r7t1Ed3wVyDS2HROwRU5K4PVmS
 olMexGyYGEHrUqWcoYPx991B4Osv+kKUMwqAz4AuMkZzgW/jLmFuLMx4CNkKYlB02KmRD5Nl
 ae+RBM5vutZVrL6ZcqT4YLZVlMYEcy6H5e7PqPWo3ZBgKtbfxC9jOBQzSAWY4YbKiOArMLqB
 lmp/mOgu+MbiL9sTqg8gdTE+Zr82y9R9m1Dx/JMelU88aiMVDJpqex+sa8gHPWTjS8An5oy7
 FtRAg1bs5ZjCMlg5By+i+uSrbvqkZgqmBg21hc5xTQ87njxnzaE0FAORDYhZsTfQA7CAn6se
 31tc6C1Hr85zBZ34LkD0k4RKAMJ/EgCrLQExxFBaErzcKV1rAihTkGZhBGNR9AtAzA
X-IronPort-AV: E=Sophos;i="5.81,245,1610402400"; 
   d="scan'208";a="3364773"
Received: from unknown (HELO WVALE-MB-SVR-05.econetzw.local)
 ([192.168.101.173])
 by ironportLAN.econet.co.zw with ESMTP; 13 Mar 2021 17:29:05 +0200
Received: from WVALE-CAS-SVR-9.econetzw.local (192.168.101.184) by
 WVALE-MB-SVR-05.econetzw.local (192.168.101.173) with Microsoft SMTP Server
 (TLS) id 15.0.1473.3; Sat, 13 Mar 2021 17:29:03 +0200
Received: from User (165.231.148.189) by WVALE-CAS-SVR-9.econetzw.local
 (10.10.11.230) with Microsoft SMTP Server id 15.0.1473.3 via Frontend
 Transport; Sat, 13 Mar 2021 17:29:14 +0200
From: "Reem E. A" <chawora@econet.co.zw>
Subject: Re:
Date: Sat, 13 Mar 2021 15:29:01 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <8bd610e62caf400783acd4309e54dad1@WVALE-CAS-SVR-9.econetzw.local>
To: Undisclosed recipients:;
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
Reply-To: r19772744@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Ms. Reem Ebrahim Al-Hashimi, I am the "Minister of state
and Petroleum" also "Minister of State for International Cooperation"
in UAE. I write to you on behalf of my other "three (2) colleagues"
who has approved me to solicit for your "partnership in claiming of
{us$47=Million}" from a Financial Home on their behalf and
for our "Mutual Benefits".

The Fund {us$47=Million} is our share from the (over-invoiced) Oil/Gas
deal with Turkish Government within 2013/2014, however, we
don't want our government to know about the fund. If this proposal
interests you, let me know, by sending me an email and I will send to
you detailed information on how this business would be successfully
transacted. Be informed that nobody knows about the secret of this
fund except us, and we know how to carry out the entire transaction.
So I am compelled to ask, that you will stand on our behalf and
receive this fund into any account that is solely controlled by you.

We will compensate you with 15% of the total amount involved as
gratification for being our partner in this transaction. Reply to:
reem.alhashimi@yandex.com

Regards,
Ms. Reem.
This mail was sent through Econet Wireless, a Global telecoms leader.

DISCLAIMER

The information in this message is confidential and is legally privileged. It is intended solely for the addressee. Access to this message by anyone else is unauthorized. If received in error please accept our apologies and notify the sender immediately. You must also delete the original message from your machine. If you are not the intended recipient, any use, disclosure, copying, distribution or action taken in reliance of it, is prohibited and may be unlawful. The information, attachments, opinions or advice contained in this email are not the views or opinions of Econet Wireless, its subsidiaries or affiliates. Econet Wireless therefore accepts no liability for claims, losses, or damages arising from the inaccuracy, incorrectness, or lack of integrity of such information.
[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/AgileBanner.png]
WORK ISN'T A PLACE
IT'S WHAT WE DO
________________________________





[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/telephone.png]




[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/email.png]

<mailto:>


[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/location.png]




[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/website.png]

www.econet.co.zw<https://www.econet.co.zw>


[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/inspired.jpg]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
