Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8C52455A6
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 06:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7290B87B8E;
	Sun, 16 Aug 2020 04:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVgnotRHUZRa; Sun, 16 Aug 2020 04:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12913878A4;
	Sun, 16 Aug 2020 04:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8A071BF4DB
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 04:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B9599203C4
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 04:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFGHawb6RsTY for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 04:16:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rednodo.net (mail.rednodo.com [52.6.85.189])
 by silver.osuosl.org (Postfix) with ESMTP id 8700C203BD
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 04:16:33 +0000 (UTC)
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received-SPF: softfail (serargentino.com.ar: Sender is not authorized by
 default to use 'contacto@serargentino.com.ar' in 'mfrom' identity, however
 domain is not currently prepared for false failures (mechanism '~all'
 matched)) receiver=ip-172-31-37-208.ec2.internal; identity=mailfrom;
 envelope-from="contacto@serargentino.com.ar"; helo="[103.99.3.132]";
 client-ip=103.99.3.132
Received: from [103.99.3.132] (unknown [103.99.3.132])
 by rednodo.net (Postfix) with ESMTP id E13F46DD0B;
 Sun, 16 Aug 2020 00:29:21 -0400 (EDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Licence award
To: Recipients <contacto@serargentino.com.ar>
From: "Cocal-Cola" <contacto@serargentino.com.ar>
Date: Sat, 15 Aug 2020 21:16:21 -0700
Message-Id: <20200816041634.B9599203C4@silver.osuosl.org>
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
Reply-To: fostergrant97@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings Winner,
 
Are you the correct owner of this email address? If yes then be glad this day as the result of the Coca-Cola lotto online e-mail address free-ticket winning draws of August 2020 held in the United States of America has just been released and we are glad to announce to you that your email address won you the sweepstakes in the first category and you are entitled to claim the sum of Three Million Five Hundred Thousand United States Dollars (US$3,500,000.00). Your email address was entered for the online draw on this ticket No: 546-373-66773 and won on this Lucky No: (14)-(8)-(5)-(19)-(28)-(12)-(30).
 
On how to receive your won prize of US$3.5M (Three Million Five Hundred Thousand United States Dollars Only); to enable us to ascertain you as the rightful winner and receiver of the US$3.5 million dollars, reply to this email and MAKE SURE you include the below-listed information in your contact email to him:
 
Your complete official names, country of origin and country of residence/work, contact telephone and Mobile numbers, Address, Amount won, Free Ticket and Lucky numbers, Sex, Age, Occupation and Job title.
 
Just in case you are thinking of how you won without entering then know again that this very draw of the Coca-Cola Lottery Organization in which you have emerged as a winner was a free ticket online email address draws where thousands of email addresses were collected from almost all worldwide websites and used for the online draws/sweepstakes and during winners selection, your email address came out among the first ten which won you the lottery in the first winnings category and entitles you to claim the US$3,500,000.00 dollars.
 
Yours Faithfully,
Foster Grant

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
