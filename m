Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8327EC3F5
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Nov 2023 14:45:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F4DE417C9;
	Wed, 15 Nov 2023 13:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F4DE417C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sR3bNvp1Pce; Wed, 15 Nov 2023 13:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E949417BA;
	Wed, 15 Nov 2023 13:45:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E949417BA
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D53EF1BF228
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 13:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADA1340499
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 13:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADA1340499
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2C9JFr22N-d
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 13:44:59 +0000 (UTC)
X-Greylist: delayed 1985 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 13:44:57 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B247D40491
Received: from mail.cls.vn (mail.cls.vn [14.225.5.136])
 by smtp4.osuosl.org (Postfix) with ESMTP id B247D40491
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 13:44:57 +0000 (UTC)
X-MDAV-Result: clean
X-MDAV-Processed: mail.cls.vn, Wed, 15 Nov 2023 20:11:15 +0700
Received: from [51.195.53.194] by mail.cls.vn (MDaemon PRO v16.5.2) 
 with ESMTPA id md50005369935.msg for <driverdev-devel@linuxdriverproject.org>; 
 Wed, 15 Nov 2023 20:11:15 +0700
X-Spam-Processed: mail.cls.vn, Wed, 15 Nov 2023 20:11:15 +0700
 (not processed: message from trusted or authenticated source)
X-MDRemoteIP: 51.195.53.194
X-MDHelo: [51.195.53.194]
X-MDArrival-Date: Wed, 15 Nov 2023 20:11:15 +0700
X-Authenticated-Sender: no-reply@cls.vn
X-Return-Path: prvs=1683af5748=no-reply@cls.vn
X-Envelope-From: no-reply@cls.vn
X-MDaemon-Deliver-To: driverdev-devel@linuxdriverproject.org
MIME-Version: 1.0
Content-Description: Mail message body
Subject: my subject
To: Recipients <no-reply@cls.vn>
From: "Ms Toni"<no-reply@cls.vn >
Date: Wed, 15 Nov 2023 05:11:11 -0800
Message-Id: <20231115134459.ADA1340499@smtp4.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
 d=cls.vn; 
 s=MDaemon; t=1700053875; x=1700658675; i=no-reply@cls.vn;
 q=dns/txt; h=Content-Type:MIME-Version:Content-Transfer-Encoding:
 Content-Description:Subject:To:From:Date:Reply-To; bh=S0C1sjeHjK
 5aJ1yHp6QKSt2ig/RmqOwyBGPxLRqSYFQ=; b=KftJF+FKNu14Ybmhm/53LlXVeb
 adTkhLsOpkF1LPO/XtiLLGoL0qkvPVvcE0+PQ+mJYwlRLabz1jcsYRcdeUxqEVl0
 I0sUPtbmbwNvtx6AzrMkZFHJxtZKsNpGjCyKyId3kDh/ZXa6Wol7EqUPyTM92Ypo
 tutwC8APsXaPtZOwI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=cls.vn header.i=no-reply@cls.vn
 header.a=rsa-sha256 header.s=MDaemon header.b=KftJF+FK
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
Reply-To: tran24358@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm Toni Harris and I'm looking for a partner to work with in your country. I need assistance investing funds in your country. Email me to discuss this opportunity with you. Contact email: tran24358@gmail.com

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
