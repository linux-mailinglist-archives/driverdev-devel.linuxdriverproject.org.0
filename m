Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2E812FD7E
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 21:16:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 675DA22177;
	Fri,  3 Jan 2020 20:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8D+88xq4xbQT; Fri,  3 Jan 2020 20:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAAE52214F;
	Fri,  3 Jan 2020 20:16:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDE661BF3FE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 20:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA86985DCF
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 20:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jmi3t-YwZS0Z
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 20:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BDEF2859FC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 20:15:56 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id d18so35003188qtj.10
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 03 Jan 2020 12:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=40ACnQIUnpge54Cj+EODMXbGQ2AM0yGbootCDBdgIh0=;
 b=sdCzN7UBxFMH0TcAsjrnkZ1kCJR3KirAqNeYyTC4T1Z/Rq8YIYvuakE9JshqUUbj4/
 gYD9V7CLkGwl0ftfHEY/lQep6AHlTULWNnN+w0SNhwnqUvL0tyvk2yCeF0JctQvw0NiY
 MFzE2EwLJ+Dle2TBaZ1aOzn72cYYAySwgQXosugcMnahUCunaQVZu/6K2WptEGm0+psW
 W/RO4Xvl4JxavnzBe2rFTWMbbkgwx/H8R5tBi2RnHZYGOV2sZ4k5V9Y/VgnnOFT1ExKe
 01nixN1W856t1KLa9yy4kx0FQTyFCTJo304QySt4fbefl36r7QPfhCte4bHkcPH31ymD
 /JpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=40ACnQIUnpge54Cj+EODMXbGQ2AM0yGbootCDBdgIh0=;
 b=UGllsdpLhAf6+FBf9ZGX93al3nuyfmh7LtoFCOugTe75lwpibl+r9Boy+jHG8/4gK2
 dSJmAZGtos4qaIyfNiw+pFP+Oe3nMEnSyiNeSU2CfQsJqaWmW8VOjqVjUmdz6Hw6OvkN
 FTwhQfrFHBB1Qt58a3GenlcHC5tLflCrzctf80+M3MZ07SlGzML6wXj7uQd36gWcEFA8
 g6mW98I6XK3MR3y/XKSeTUq7gwLd4MlOvK0KkkAuTSTFzsX7jp0roKQNLJbisarqJFLj
 rCz8vw8yVF7g0VeeNA2/0WFfu/qEMYtmoZTP13JMfew98vrBTLFf1/tUfLZSNdNkPdPO
 gxoA==
X-Gm-Message-State: APjAAAUXL/4qrVYDnCOELmzmYVF6JVWs1FoRK8mUmuhLR7OdrY6wLpOc
 7T14FkmpnMskM5nx4GcGkaPU7FGQ12XzjvK01zM=
X-Google-Smtp-Source: APXvYqw2M09quIEAEvXiM3voOJ4gfF+ACEImDf+OckM2gi1YA+FwIXLKEubYKZCLlqPueGJMd+OoDY3+LRVYi3AnV7g=
X-Received: by 2002:aed:3e21:: with SMTP id l30mr66315781qtf.357.1578082555783; 
 Fri, 03 Jan 2020 12:15:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:4410:0:0:0:0:0 with HTTP;
 Fri, 3 Jan 2020 12:15:55 -0800 (PST)
From: "Rev.Dr Emmanuel Okoye CEO Ecobank-benin"
 <westernunion.benin982@gmail.com>
Date: Fri, 3 Jan 2020 21:15:55 +0100
Message-ID: <CAP=nHB+DN+y6CDd3cq5coH4OxWizwgbAV9q3vx3aOGLrNQKr1g@mail.gmail.com>
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
