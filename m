Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D275C15A93C
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 13:34:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B0BDA86614;
	Wed, 12 Feb 2020 12:34:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qeSGdl9+HSH3; Wed, 12 Feb 2020 12:34:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DE1E86092;
	Wed, 12 Feb 2020 12:34:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 727311BF3CC
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6F7AF8587E
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6vkHXOffRhMg for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 12:34:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.difson.gob.mx (fw.difson.gob.mx [200.38.154.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EEAC85817
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 12:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.difson.gob.mx (Postfix) with ESMTP id 45EB33241EF;
 Wed, 12 Feb 2020 05:07:50 -0700 (MST)
Received: from mail.difson.gob.mx ([127.0.0.1])
 by localhost (mail.difson.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eaTDs2gViQOt; Wed, 12 Feb 2020 05:07:48 -0700 (MST)
Received: from localhost (localhost [127.0.0.1])
 by mail.difson.gob.mx (Postfix) with ESMTP id 07D463241F2;
 Wed, 12 Feb 2020 05:07:38 -0700 (MST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.difson.gob.mx 07D463241F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=difson.gob.mx;
 s=D7CA4582-F2E2-11E6-8966-AB4C44A37E80; t=1581509258;
 bh=zI5MTMWZOlxtiunPusKdidxivWrdVtbxAb/b19Fq+v8=;
 h=Date:From:Message-ID:MIME-Version;
 b=eqoVUvBgoMXsYmVAQiQn6gMadGwBztZFTBFqvmQaj330QAR79Qd4c2JFk9kpGQgX/
 DokCm5QUFIw6Lp8Ux1KWlFvh5d6hiGmNXcf8k9VsfD3X3q2zNfdnlZsQpjft/cqkw4
 B8PpLP+GoAMjho09JX3gXWyT0fCoGeQtBwNQKnEw=
X-Virus-Scanned: amavisd-new at difson.gob.mx
Received: from mail.difson.gob.mx ([127.0.0.1])
 by localhost (mail.difson.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Itmm6cKD3a42; Wed, 12 Feb 2020 05:07:36 -0700 (MST)
Received: from mail.difson.gob.mx (mail.difson.gob.mx [10.0.0.28])
 by mail.difson.gob.mx (Postfix) with ESMTP id B6DE63241AB;
 Wed, 12 Feb 2020 05:07:08 -0700 (MST)
Date: Wed, 12 Feb 2020 05:07:08 -0700 (MST)
From: Friedrich And Annand Mayrhofer <rossy.kuroda@difson.gob.mx>
Message-ID: <92629403.43096.1581509228431.JavaMail.zimbra@difson.gob.mx>
Subject: Did You get My Message This Time?
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.12_GA_3803 (zclient/8.8.12_GA_3803)
Thread-Index: 4SkY4UErNvTRF+Qq4F2CVLLqcly32A==
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
