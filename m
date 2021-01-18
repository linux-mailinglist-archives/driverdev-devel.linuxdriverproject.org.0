Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2628D2F9745
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 02:19:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 547ED85B0D;
	Mon, 18 Jan 2021 01:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EsQxtOeDlLkW; Mon, 18 Jan 2021 01:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 337B185A58;
	Mon, 18 Jan 2021 01:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BC041BF3BF
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6862E8531B
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AK6N8yIJhZ3o for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
X-Greylist: delayed 00:08:54 by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEE318526D
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
Received: from mx-rz-smart.rrze.uni-erlangen.de
 (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTPS id 4DJty42hPnz8t29;
 Mon, 18 Jan 2021 02:10:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1610932236; bh=7IRriX93JC6O7u0yXJ+3MvNLYHJ0hIosx9xBU4of9YI=;
 h=From:To:Cc:Subject:Date:From:To:CC:Subject;
 b=bjWtN8j1DrKf0qr62g8OeuW4TDonUhCHi9vsYj6Siu4XJNeNfB4qCc7vttnPeKu8k
 6lXRoscQTlQtRPetkgYUESQ24qCaMafMNsWMps0p33/XU7A36QqyOHyQkLF6LpSioD
 uKup9rLm210gg58OAdq43e+FFWeyqf2OF6WB8iftXgeRcbBhiRzsSTlMX41ItSJgtF
 QFtbAcRM3qaac9fkNRmVqBNFB3Gn3vG6rnZPtJ88Z524MR9SA+v53QaxIUE93f6wT1
 ahyGp1qxxgm2FDVtP+rGi7fz4jvSGeJqikQOX9PCP4QWqDiRJq84td9f8A0l9Vo60c
 8H/6pK4xnyhpg==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 2001:a62:19b2:a701:a9ea:94f8:dbd1:5695
Received: from shaun-PC.fritz.box (unknown
 [IPv6:2001:a62:19b2:a701:a9ea:94f8:dbd1:5695])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: U2FsdGVkX1+zrOg9k8sHkhmgR1N2nNUoXl1wPude+F4=)
 by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 4DJty15Q75z8spV;
 Mon, 18 Jan 2021 02:10:33 +0100 (CET)
From: Johannes Czekay <johannes.czekay@fau.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] wlan-ng: checkpatch.pl cleanup series
Date: Mon, 18 Jan 2021 02:09:50 +0100
Message-Id: <20210118010955.48663-1-johannes.czekay@fau.de>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, jbwyatt4@gmail.com, gustavo@embeddedor.com,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org, rkovhaev@gmail.com,
 johannes.czekay@fau.de, nicolai.fischer@fau.de, hqjagain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

This patch series cleans up all the checkpatch.pl related warnings in the
wlan-ng module. I tried to resolve those issues in a sensible manner.

Johannes Czekay (6):
  wlan-ng: clean up line ending
  wlan-ng: clean up spinlock_t definition
  wlan-ng: rename macros
  wlan-ng: clean up line length
  wlan-ng: clean up alignment
  wlan-ng: clean up reused macros

 drivers/staging/wlan-ng/cfg80211.c         | 33 ++++++++-------
 drivers/staging/wlan-ng/hfa384x.h          |  2 +-
 drivers/staging/wlan-ng/p80211metadef.h    | 24 +++++------
 drivers/staging/wlan-ng/p80211metastruct.h | 18 +-------
 drivers/staging/wlan-ng/p80211netdev.c     |  2 +-
 drivers/staging/wlan-ng/p80211req.c        |  6 +--
 drivers/staging/wlan-ng/prism2mgmt.c       | 48 ++++++----------------
 drivers/staging/wlan-ng/prism2mib.c        | 18 ++++----
 8 files changed, 56 insertions(+), 95 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
