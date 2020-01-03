Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2D412FD7C
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 21:16:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E21F8221CC;
	Fri,  3 Jan 2020 20:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i58RlZjplHPM; Fri,  3 Jan 2020 20:16:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F188203C7;
	Fri,  3 Jan 2020 20:15:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9248C1BF3FE
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 20:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A29386B90
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 20:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YkFqA6ViCZiu for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 20:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D8F8181AE6
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 20:15:56 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id m14so764917qvl.3
 for <devel@driverdev.osuosl.org>; Fri, 03 Jan 2020 12:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=40ACnQIUnpge54Cj+EODMXbGQ2AM0yGbootCDBdgIh0=;
 b=PaaLSu08C6pZO4KYX5Xib8/8LK/VZKfIEkKsCszkEjMvbtnYiYyrSGbWLGJ3+0MVZy
 c0a2awYaqSh4YQSvIa9swPZwfNRCmPBADNdJ0CgmUeKp8MxukpSrikrGm954YKkiDf6C
 XsUE9t7IARMdPLB5SdGQDC+RzyN0uLd+THleTe7qRiWKiUk9KxdcLWL3CBnfP6AQPYqb
 soWRPWMB7d8BF3OAbdxL2UIb5go8mZgJL8biRtoRgu00u3zfgcbladqM77cg9PPLUt5j
 m4qEnuMCw9jckbrViHNNnB4AKjDhEqcbOMXIZ+tvvPmVZvwhTcBaIxz17l4I0nr4LlM4
 1Qkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=40ACnQIUnpge54Cj+EODMXbGQ2AM0yGbootCDBdgIh0=;
 b=JEGURvXDkupOJRp8V1Enxo0CPElyfEaGniUeefC8NO5dyWfJHAyrUzJpivHQR19xob
 NnxtuxsdtJsK+9lRIgUBJcTKHIlXT4J4N4cZwQEoEZPKxp5knSHUgX7GpFZUDwm0kACr
 WX/w6EfaoNpD1SvbCguu22kVzGmKRpHPAfrQ/udFaeyUBMXZYV9u1u4g4nVv5tywLVHY
 +edOUPIt1mmGdQGSbSnEvijU3AJI0JP0PRKQf8OF17d2e5Qt37J/hqEzVWvBdnybactm
 WRRYDt/tCY70w+Fd1IyBTI7AyG2ChtED4K7XvAzpa7YKb1armcjkvXbA5Jv3hLAbEiWj
 kHnA==
X-Gm-Message-State: APjAAAUCBazaZGYtnY+G8FmkEG1kKCOzf+PW4x/EuHk4UC+YCiOA8v67
 cS9DZI0A+KjKG69alZ4E9X4dQPrkKA8HnUSe73E=
X-Google-Smtp-Source: APXvYqyGYGyEvPpQdq5MOfVtJD1EtFgvO+dCiU8yg1MjIAsAhj2V7SAS2Q0WHTJ09/SsNuT4r6E1mYGMXRKuMbL85Es=
X-Received: by 2002:a05:6214:13ef:: with SMTP id
 ch15mr62542233qvb.183.1578082555798; 
 Fri, 03 Jan 2020 12:15:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:4410:0:0:0:0:0 with HTTP;
 Fri, 3 Jan 2020 12:15:55 -0800 (PST)
From: "Rev.Dr Emmanuel Okoye CEO Ecobank-benin"
 <westernunion.benin982@gmail.com>
Date: Fri, 3 Jan 2020 21:15:55 +0100
Message-ID: <CAP=nHBJS-9jP_Bgd2xPhmkkhUhFRvMop=qP2Nvj3ZJgWvYZcxQ@mail.gmail.com>
Subject: I promise you must be happy today, God has uplifted you and your
 family ok
To: undisclosed-recipients:;
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend

i hope all is well with you,if so, glory be to God almighty. I'm very
happy to inform you, about my success in getting payment funds under
the cooperation of a new partner from United States of
America.Presently I am in uk for investment projects with my own share
of the total sum. I didn't forget your past efforts. IMF finally
approved your compensation payment funds this morning by prepaid (ATM)
Debit card of US$12,500.000.00Million Dollars, Since you not received
this payment yet, I was not certified
but it is not your fault and not my fault, I hold nothing against
you.than bank official whom has been detaining the transfer in the
bank, trying to claim your funds by themselves.

Therefore, in appreciation of your effort I have raised an
International prepaid (ATM) Debit card of US$12,500.000.00 in your
favor as compensation to you.

Now, i want you to contact my Diplomatic Agent, His name is Mike Benz
on His  e-mail Address (mikebenz550@aol.com

ask Him to send the Prepaid (ATM) Debit card to you. Bear in mind that
the money is in Prepaid (ATM) Debit card, not cash, so you need to
send to him,
your full name
address  where the prepaid (ATM) Debit card will be delivered to you,
including your cell phone number. Finally, I left explicit
instructions with him, on how to send the (ATM CARD) to you.

The Prepaid (ATM) Debit card, will be send to you through my
Diplomatic Agent Mr. Mike Benz immediately you contact him. So contact
my Diplomatic Agent Mr. Mike Benz immediately you receive this letter.
Below is his contact information:

NAME : MIKE BENZ
EMAIL ADDRESS: mikebenz550@aol.com
Text Him, (256) 284-4886

Request for Delivery of the Prepaid (ATM) Debit card  to you today.
Note, please I have paid for the whole service fees for you, so the
only money you will send to my Diplomatic Agent Mr. Mike Benz is
$50.00 for your prepaid (ATM) Debit card DELIVERY FEE to your address
ok.
Let me know once you receive this Card at your address.
Best regards,
Rev.Dr, George Adadar
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
