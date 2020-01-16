Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A064813FCE5
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 00:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24F0387F9C;
	Thu, 16 Jan 2020 23:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0dix9v8+R5-J; Thu, 16 Jan 2020 23:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38A3287ECD;
	Thu, 16 Jan 2020 23:21:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9AEF81BF39D
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 23:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97F4D864EF
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 23:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvJTY7FR_GMO for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 23:21:20 +0000 (UTC)
X-Greylist: delayed 02:34:28 by SQLgrey-1.7.6
Received: from mail.conatel.gob.ve (mail.conatel.gob.ve [201.248.69.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8CC05864EC
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 23:21:19 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.conatel.gob.ve (Postfix) with ESMTP id 03CB61186457;
 Thu, 16 Jan 2020 15:52:19 -0400 (-04)
Received: from mail.conatel.gob.ve ([127.0.0.1])
 by localhost (mail.conatel.gob.ve [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 5DlHyJLphAO8; Thu, 16 Jan 2020 15:52:12 -0400 (-04)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.conatel.gob.ve (Postfix) with ESMTP id 1B43C11855F6;
 Thu, 16 Jan 2020 15:52:08 -0400 (-04)
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.conatel.gob.ve 1B43C11855F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=conatel.gob.ve;
 s=5C18DDE8-FD64-11E3-A8EF-B68B774165DB; t=1579204328;
 bh=ONiYfY8hL3XO0+q3v6QnQFSpO+07GWJt9BD1PSEvgfw=;
 h=Date:From:Reply-To:Message-ID:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding;
 b=rVEqKS/SzgMjjPS3flm/6PPe3wpQYLk8x5ZA7lQnUexgf3fv+g5Hpuz/fzzAzAn3Y
 G3/Y7/da0oB7vl9VxKqRd/s7McuV7/+FgfTW0Gt9m4jhb+fQjqjFitTklrOFZSzJnN
 f0KX1kyCi0tAiqR9yvSRvxVgyVq+eSSW7fQi3ork=
X-Virus-Scanned: amavisd-new at conatel.gob.ve
Received: from mail.conatel.gob.ve ([127.0.0.1])
 by localhost (mail.conatel.gob.ve [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6Nd6ebfgTx4A; Thu, 16 Jan 2020 15:52:07 -0400 (-04)
Received: from mail.conatel.gob.ve (correo.conatel.int [10.1.1.21])
 by mail.conatel.gob.ve (Postfix) with ESMTP id 9BF0311859B7;
 Thu, 16 Jan 2020 15:52:03 -0400 (-04)
Date: Thu, 16 Jan 2020 15:22:03 -0430 (VET)
From: manuel franco <hmorales@conatel.gob.ve>
Message-ID: <2140236180.457827.1579204323475.JavaMail.zimbra@conatel.gob.ve>
Subject: Spende von 2 Millionen Euro.
MIME-Version: 1.0
X-Originating-IP: [105.0.3.30]
X-Mailer: Zimbra 8.6.0_GA_1242 (zclient/8.6.0_GA_1242)
Thread-Topic: Spende von 2 Millionen Euro.
Thread-Index: 6CWQTKnGmk9oexkRltZ3If1fevv/iA==
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
Reply-To: manuel franco <manuelfrancospende11@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>




Hallo
Sie wurden ausgewaumlhlt, um die Summe von euro 2.000.000,00 (zwei Millionen Euro) in meinem laufenden Wohltaumltigkeitsprogramm zu erhalten. Fur  weitere Informationen senden Sie bitte ein Email: manuelfrancospende@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
