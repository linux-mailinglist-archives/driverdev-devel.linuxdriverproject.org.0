Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34C315A908
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 13:23:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6056187B39;
	Wed, 12 Feb 2020 12:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tt19NmOvJ896; Wed, 12 Feb 2020 12:23:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DE6F87AFE;
	Wed, 12 Feb 2020 12:23:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B9761BF3CC
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7759E20362
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w9+n9umP-lhJ for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 12:23:21 +0000 (UTC)
X-Greylist: delayed 00:15:38 by SQLgrey-1.7.6
Received: from mail.difson.gob.mx (fw.difson.gob.mx [200.38.154.174])
 by silver.osuosl.org (Postfix) with ESMTPS id A8BF620346
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 12:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.difson.gob.mx (Postfix) with ESMTP id 398BD3240F9;
 Wed, 12 Feb 2020 05:05:05 -0700 (MST)
Received: from mail.difson.gob.mx ([127.0.0.1])
 by localhost (mail.difson.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ihqjrs79RI_1; Wed, 12 Feb 2020 05:05:03 -0700 (MST)
Received: from localhost (localhost [127.0.0.1])
 by mail.difson.gob.mx (Postfix) with ESMTP id D95863240FA;
 Wed, 12 Feb 2020 05:05:02 -0700 (MST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.difson.gob.mx D95863240FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=difson.gob.mx;
 s=D7CA4582-F2E2-11E6-8966-AB4C44A37E80; t=1581509103;
 bh=zI5MTMWZOlxtiunPusKdidxivWrdVtbxAb/b19Fq+v8=;
 h=Date:From:Message-ID:MIME-Version;
 b=uDA14hF4ha4cxxyukkBWmKt/B4r2mjXge3bQGApvPf+LH9q6ZcRZ2cO6NiX4uoo0I
 LM6VLIdK7tmqLVbr4+aMSr1mu2BLQ2lJ8b9Cmtzi56bs5U5ANAJIxz2te5Zh3WSRTg
 Cb6JgIe4L7P3hfjaEw3UeURkAcVD5kplIr6JAF1s=
X-Virus-Scanned: amavisd-new at difson.gob.mx
Received: from mail.difson.gob.mx ([127.0.0.1])
 by localhost (mail.difson.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id oFECZFaidvNc; Wed, 12 Feb 2020 05:05:02 -0700 (MST)
Received: from mail.difson.gob.mx (mail.difson.gob.mx [10.0.0.28])
 by mail.difson.gob.mx (Postfix) with ESMTP id 7C8193240F4;
 Wed, 12 Feb 2020 05:04:48 -0700 (MST)
Date: Wed, 12 Feb 2020 05:04:47 -0700 (MST)
From: Friedrich And Annand Mayrhofer <rossy.kuroda@difson.gob.mx>
Message-ID: <2119769316.43082.1581509087791.JavaMail.zimbra@difson.gob.mx>
Subject: Did You get My Message This Time?
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.12_GA_3803 (zclient/8.8.12_GA_3803)
Thread-Index: 8ZO7wJJyu+jriqETbPI0oHohp5/Efg==
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
