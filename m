Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC2327526C
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 09:48:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B55F323018;
	Wed, 23 Sep 2020 07:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M2kdS1arE9V1; Wed, 23 Sep 2020 07:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9CA1C22EE7;
	Wed, 23 Sep 2020 07:47:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC25A1BF4D6
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 07:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E8FAB85FFC
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 07:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9nES5i5b3a3 for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 07:47:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hermes.cta.br (hermes.cta.br [161.24.235.5])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 04FAF84F8B
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 07:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hermes.cta.br (Postfix) with ESMTP id 78E8E1702EF4;
 Wed, 23 Sep 2020 04:39:05 -0300 (-03)
Received: from hermes.cta.br ([127.0.0.1])
 by localhost (hermes.cta.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UCrKbPdObbL9; Wed, 23 Sep 2020 04:39:04 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by hermes.cta.br (Postfix) with ESMTP id 57EAE1506D0F;
 Wed, 23 Sep 2020 02:56:57 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 hermes.cta.br 57EAE1506D0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cta.br;
 s=50824260-A46F-11E8-B5E3-16F5207DEC71; t=1600840618;
 bh=PEgy+RpcsckcVXxslQn6d+tc//P81+6V7lvSU9dRFp0=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=Bj9maw6tM9YrkUaMokl76B/QGA/fv/NhQjUO1CdHpZr63/0WglIZVUcRU2/u9jMl7
 sa4vMVoamHZLN2qIUdqckCcE42he4E71Wck+KXHzSun9CmfP6ziVP/mspSRvs8Mszj
 YXUNrQXgiptmZYpvjzPghNCqWi5ZI69yuqAEZ1jL+N94cjrFqVM23Y9mLT9DzCgdle
 BCveoRIWfhrojnY++uIGsMudj4REi1z/FOpHUaTpKi7D5YnSWrNnQrvKEjE/HzMqcR
 xqnH+0SnT/D0/LsIYBmVjf6DpQTKcZp6D5ZCz9ygI39cbhTejKUMRMrgzPMEStw1/6
 uwe/FOmFqmOKw==
X-Virus-Scanned: amavisd-new at cta.br
Received: from hermes.cta.br ([127.0.0.1])
 by localhost (hermes.cta.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id kAfRUYzNv7G6; Wed, 23 Sep 2020 02:56:57 -0300 (-03)
Received: from [10.120.212.214] (unknown [105.12.3.179])
 by hermes.cta.br (Postfix) with ESMTPSA id A4316162A758;
 Wed, 23 Sep 2020 01:48:40 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: spende von 2,000,000 euro
To: Recipients <scco@cta.br>
From: ''Tayeb souami'' <scco@cta.br>
Date: Wed, 23 Sep 2020 06:51:00 +0200
Message-Id: <20200923044840.A4316162A758@hermes.cta.br>
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
Reply-To: Tayebsouam.spende@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo mein lieber Freund
                                  Mein Name ist Tayeb Souami aus New Jersey=
 in Amerika und ich habe den America Lottery Jackpot von 315 Millionen Euro=
 gewonnen. Ich habe mich entschlossen, die Summe von 2.000.000 Euro an f=FC=
nf gl=FCckliche Personen zu spenden, und Sie wurden als einer der Beg=FCnst=
igten ausgew=E4hlt. Bitte klicken Sie auf diesen Link, um mehr =FCber meine=
n Gewinn zu erfahren.


UHR MICH HIER: https://www.youtube.com/watch?v=3DZ6ui8ZDQ6Ks

Bitte kontaktieren Sie mich =FCber diese E-Mail: Tayebsouam.spende@gmail.com


Ich hoffe, Sie und Ihre Familie gl=FCcklich zu machen.

Gr=FC=DFe
Herr Tayeb Souami
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
