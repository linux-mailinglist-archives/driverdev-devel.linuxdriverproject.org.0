Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE77F957A
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Nov 2023 22:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85D854043A;
	Sun, 26 Nov 2023 21:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85D854043A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SMmz8dIkInGY; Sun, 26 Nov 2023 21:17:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FAE84032B;
	Sun, 26 Nov 2023 21:17:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FAE84032B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B68111BF40A
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 21:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8EA50810CC
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 21:16:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EA50810CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDZUcLCudiQh for <devel@linuxdriverproject.org>;
 Sun, 26 Nov 2023 21:16:53 +0000 (UTC)
Received: from mail.sacranet.com.br (mail.sacranet.com.br [186.227.80.3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 994C78106A
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 21:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 994C78106A
Received: from localhost (localhost [127.0.0.1])
 by mail.sacranet.com.br (Postfix) with ESMTP id 809DC2613F8
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 17:56:41 -0300 (-03)
Received: from mail.sacranet.com.br ([127.0.0.1])
 by localhost (mail.sacranet.com.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id IvKR3cHm7nUZ for <devel@linuxdriverproject.org>;
 Sun, 26 Nov 2023 17:56:41 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.sacranet.com.br (Postfix) with ESMTP id 3BF4A260C23
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 17:56:36 -0300 (-03)
X-Virus-Scanned: amavisd-new at mail.sacranet.com.br
Received: from mail.sacranet.com.br ([127.0.0.1])
 by localhost (mail.sacranet.com.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xw6XU0mBBi-f for <devel@linuxdriverproject.org>;
 Sun, 26 Nov 2023 17:56:36 -0300 (-03)
Received: from mail.conquista.mg.gov.br (mail.conquista.mg.gov.br
 [186.227.81.231])
 by mail.sacranet.com.br (Postfix) with ESMTPS id 98EFE261156
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 17:56:31 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.conquista.mg.gov.br (Postfix) with ESMTP id 45EA42CA6056;
 Sun, 26 Nov 2023 14:27:47 -0200 (-02)
Received: from mail.conquista.mg.gov.br ([127.0.0.1])
 by localhost (mail.conquista.mg.gov.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id t8YdwgJpwmSd; Sun, 26 Nov 2023 14:27:46 -0200 (-02)
Received: from localhost (localhost [127.0.0.1])
 by mail.conquista.mg.gov.br (Postfix) with ESMTP id 0D5E82CA026F;
 Sun, 26 Nov 2023 12:55:02 -0200 (-02)
X-Virus-Scanned: amavisd-new at conquista.mg.gov.br
Received: from mail.conquista.mg.gov.br ([127.0.0.1])
 by localhost (mail.conquista.mg.gov.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8HgpdRHPfa2u; Sun, 26 Nov 2023 12:55:01 -0200 (-02)
Received: from DESKTOP-N7F9Q54.cogeco.local (unknown [216.238.100.68])
 by mail.conquista.mg.gov.br (Postfix) with ESMTPSA id E5E5A2CAAA6D;
 Sun, 26 Nov 2023 11:40:23 -0200 (-02)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Your Winning Reference Number is ZKHRG45K.
To: Recipients <ChrisHohn@mail.conquista.mg.gov.br>
From: <ChrisHohn@mail.conquista.mg.gov.br>
Date: Sun, 26 Nov 2023 05:40:07 -0800
Message-Id: <20231126134024.E5E5A2CAAA6D@mail.conquista.mg.gov.br>
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
Reply-To: anthonyhohnc@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Sir Christopher Anthony Hohn born in October 1966. I'm a British=
 billionaire hedge fund manager and philanthropist. As of 2014, I had given=
 over $4.5 billion to the Children's investment fund foundation, Churches, =
organizations, and orphanage homes. In April 2020, I made a =A32.4 million =
donation to purchase around 100 SAMBA II machines to test for COVID-19. And=
 in the year 2023, I decided to give away =A32,500,000.00 to the individual=
, who must have received this message. If you must have received this messa=
ge, know that your email address is among the lucky winners of my =A32,500,=
000.00 mega draw and your winning Reference number is ZKHRG45K. If you are =
interested in this donation, please contact me for more info.

You can also find more about me at: https://en.wikipedia.org/wiki/Chris_Hohn

Warm Regard
Hedge funds-Manager
Sir Christopher Anthony Hohn
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
