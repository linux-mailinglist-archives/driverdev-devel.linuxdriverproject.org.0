Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F67F56BE8
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 16:29:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D87E721F6F;
	Wed, 26 Jun 2019 14:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJUjxiNxs3Ff; Wed, 26 Jun 2019 14:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79590203A8;
	Wed, 26 Jun 2019 14:29:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 915B91BF312
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 85016203A8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjTwPANJ8l89 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 14:29:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mailout2n.rrzn.uni-hannover.de (mailout2n.rrzn.uni-hannover.de
 [130.75.2.113])
 by silver.osuosl.org (Postfix) with ESMTPS id 6485120024
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 14:29:15 +0000 (UTC)
Received: from h2730561.stratoserver.net (h2730561.stratoserver.net
 [85.214.29.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id 771761F42E;
 Wed, 26 Jun 2019 16:29:12 +0200 (CEST)
From: =?UTF-8?q?Tobias=20Nie=C3=9Fen?= <tobias.niessen@stud.uni-hannover.de>
To: gregkh@linuxfoundation.org
Subject: staging: rts5208: Two patches to improve code style
Date: Wed, 26 Jun 2019 16:28:55 +0200
Message-Id: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
X-Mailer: git-send-email 2.17.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following two patches improve the code style in the rts5208 staging
driver. Many other style issues cannot be resolved without much more
extensive refactoring.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
