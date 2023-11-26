Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0E47F94DE
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Nov 2023 19:31:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 959E4404B2;
	Sun, 26 Nov 2023 18:31:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 959E4404B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id koKZaxx3HR7B; Sun, 26 Nov 2023 18:31:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07D9A400D9;
	Sun, 26 Nov 2023 18:31:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07D9A400D9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8811BF40F
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 18:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1498260B45
 for <devel@linuxdriverproject.org>; Sun, 26 Nov 2023 18:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1498260B45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vSsvJRILti3m for <devel@linuxdriverproject.org>;
 Sun, 26 Nov 2023 18:31:35 +0000 (UTC)
Received: from mail.sacranet.com.br (mail.sacranet.com.br [186.227.80.3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36F0B6079E
 for <devel@driverdev.osuosl.org>; Sun, 26 Nov 2023 18:31:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36F0B6079E
Received: from localhost (localhost [127.0.0.1])
 by mail.sacranet.com.br (Postfix) with ESMTP id 86C5C227EBC
 for <devel@driverdev.osuosl.org>; Sun, 26 Nov 2023 13:50:34 -0300 (-03)
Received: from mail.sacranet.com.br ([127.0.0.1])
 by localhost (mail.sacranet.com.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id GzRs_63m--Me for <devel@driverdev.osuosl.org>;
 Sun, 26 Nov 2023 13:50:34 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.sacranet.com.br (Postfix) with ESMTP id 22FF1227A17
 for <devel@driverdev.osuosl.org>; Sun, 26 Nov 2023 13:50:34 -0300 (-03)
X-Virus-Scanned: amavisd-new at mail.sacranet.com.br
Received: from mail.sacranet.com.br ([127.0.0.1])
 by localhost (mail.sacranet.com.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hDoC3zMFAiP9 for <devel@driverdev.osuosl.org>;
 Sun, 26 Nov 2023 13:50:34 -0300 (-03)
Received: from mail.conquista.mg.gov.br (mail.conquista.mg.gov.br
 [186.227.81.231])
 by mail.sacranet.com.br (Postfix) with ESMTPS id E3E062E86E
 for <devel@driverdev.osuosl.org>; Sun, 26 Nov 2023 13:50:33 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.conquista.mg.gov.br (Postfix) with ESMTP id 04B122CA98FD;
 Sun, 26 Nov 2023 12:27:11 -0200 (-02)
Received: from mail.conquista.mg.gov.br ([127.0.0.1])
 by localhost (mail.conquista.mg.gov.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 27JmcZ7_sgnv; Sun, 26 Nov 2023 12:27:10 -0200 (-02)
Received: from localhost (localhost [127.0.0.1])
 by mail.conquista.mg.gov.br (Postfix) with ESMTP id CDEE62CA6F95;
 Sun, 26 Nov 2023 12:02:12 -0200 (-02)
X-Virus-Scanned: amavisd-new at conquista.mg.gov.br
Received: from mail.conquista.mg.gov.br ([127.0.0.1])
 by localhost (mail.conquista.mg.gov.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 7lpDpHA8FNpf; Sun, 26 Nov 2023 12:02:12 -0200 (-02)
Received: from DESKTOP-N7F9Q54.cogeco.local (unknown [216.238.100.68])
 by mail.conquista.mg.gov.br (Postfix) with ESMTPSA id D3DD22CA917C;
 Sun, 26 Nov 2023 11:40:41 -0200 (-02)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Your Winning Reference Number is ZKHRG45K.
To: Recipients <ChrisHohn@mail.conquista.mg.gov.br>
From: <ChrisHohn@mail.conquista.mg.gov.br>
Date: Sun, 26 Nov 2023 05:40:24 -0800
Message-Id: <20231126134041.D3DD22CA917C@mail.conquista.mg.gov.br>
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
