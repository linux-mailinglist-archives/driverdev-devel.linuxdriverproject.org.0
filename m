Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A29815A909
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 13:23:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0BD285A9E;
	Wed, 12 Feb 2020 12:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VF89_AnQ9gRp; Wed, 12 Feb 2020 12:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1224A844E2;
	Wed, 12 Feb 2020 12:23:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47D311BF3CC
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4426B84F27
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KXj6GLlF4+w for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 12:23:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.difson.gob.mx (fw.difson.gob.mx [200.38.154.174])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 78D6E8409C
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 12:23:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.difson.gob.mx (Postfix) with ESMTP id F1B0F324105;
 Wed, 12 Feb 2020 05:04:51 -0700 (MST)
Received: from mail.difson.gob.mx ([127.0.0.1])
 by localhost (mail.difson.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 4nr5ORhVpN5i; Wed, 12 Feb 2020 05:04:50 -0700 (MST)
Received: from localhost (localhost [127.0.0.1])
 by mail.difson.gob.mx (Postfix) with ESMTP id EBE403240EC;
 Wed, 12 Feb 2020 05:04:46 -0700 (MST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.difson.gob.mx EBE403240EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=difson.gob.mx;
 s=D7CA4582-F2E2-11E6-8966-AB4C44A37E80; t=1581509087;
 bh=zI5MTMWZOlxtiunPusKdidxivWrdVtbxAb/b19Fq+v8=;
 h=Date:From:Message-ID:MIME-Version;
 b=ocoDSA0W6d0tONGXQe9kvE2sZRMLsGHiD2iA2S8lNuZex9gB6wziCSY9evNRLYhyh
 9k9e4szV4riFFyjXpfqxSu7fBnQ9OjUPpPARVF2OmYz//df2TrkKihtDk08NFiX63o
 mBsxQvoTAilDzf3CK6+iN3lE/S/FVOErQ3YZyy3M=
X-Virus-Scanned: amavisd-new at difson.gob.mx
Received: from mail.difson.gob.mx ([127.0.0.1])
 by localhost (mail.difson.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id LfdwzHPSxK-N; Wed, 12 Feb 2020 05:04:46 -0700 (MST)
Received: from mail.difson.gob.mx (localhost [127.0.0.1])
 by mail.difson.gob.mx (Postfix) with ESMTP id 4C8AB3240DC;
 Wed, 12 Feb 2020 05:04:30 -0700 (MST)
Date: Wed, 12 Feb 2020 05:04:30 -0700 (MST)
From: Friedrich And Annand Mayrhofer <rossy.kuroda@difson.gob.mx>
Message-ID: <2067792254.43080.1581509070036.JavaMail.zimbra@difson.gob.mx>
Subject: Did You get My Message This Time?
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.12_GA_3803 (zclient/8.8.12_GA_3803)
Thread-Index: qQBZHFIeRwRrwmHTNzQAAndrQKlxxg==
Thread-Topic: Did You get My Message This Time?
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
Reply-To: Friedrich And Annand Mayrhofer <friedricmayrhofer8@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



This is the second time i am sending you this mail.I, Friedrich Mayrhofer Donate $ 1,000,000.00 to You, Email Me personally for more details
.Regards.
Friedrich Mayrhofer
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
