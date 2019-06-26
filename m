Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D26885635B
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 09:34:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF5D885FD0;
	Wed, 26 Jun 2019 07:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bf6-r27LB2z7; Wed, 26 Jun 2019 07:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 345BE86044;
	Wed, 26 Jun 2019 07:34:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D36DB1BF33A
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D041686767
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kqFbhYhRJ80V for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 07:34:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8826F86717
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 07:34:34 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZY26x6kz8tkh;
 Wed, 26 Jun 2019 09:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561534470; bh=+trvo7ZSF3U/17+gZAtpWt3iDQQ73VJ772AhC/qoCuI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=pN3YcaFyl+jHd9qd96MKzlI/2xznxO/m0PJ+3Hu9cpIUZmfqiocTen92FepwGIv7t
 SHaQprJgdsmA++w9SbGg789XfNcEJAo0oAQloD6bp8l4lB/VQILCk4R3475LdGpowx
 L5R7AgzGQ3zLfuDvK7y5zgOxaCmvjdxOjvMg9JLe+yYZmmx29dwUTgYFgOYK3X+hI+
 /wg3fd6FwzVr10hnPLdl2295bDMFOU4YxYRr4+rQfTZwG0M917GFOp97VBs+N7HD+5
 8taIDl1sjqURQQvDcOgvYklECb6KSMfN8M0tmKQ/shY/xaMpHn4qJdzc7igIbjYzCM
 zGsTibnFxRAUg==
X-Virus-Scanned: amavisd-new at boeck5.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZY00fK3z8t4h; 
 Wed, 26 Jun 2019 09:34:28 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 26 Jun 2019
 09:34:17 +0200
Received: from TroubleWorld.fritz.box (95.90.221.207) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 26 Jun 2019 09:34:17 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 0/8] staging: kpc2000: style refactoring 
Date: Wed, 26 Jun 2019 09:35:18 +0200
Message-ID: <20190626073531.8946-1-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625115251.GA28859@kadam>
References: <20190625115251.GA28859@kadam>
MIME-Version: 1.0
X-Originating-IP: [95.90.221.207]
X-ClientProxiedBy: MBX3.exch.uni-erlangen.de (10.15.8.45) To
 MBX3.exch.uni-erlangen.de (10.15.8.45)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 fabian.krueger@fau.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Scheiderer <michael.scheiderer@fau.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A patch-series that will remove warnings, errors and check-messages,
noted and highlighted by the checkpatch.pl script concerning
kpc2000_spi.c.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>

Fabian Krueger (8):
  staging: kpc2000: add line breaks
  staging: kpc2000: blank lines after declaration
  staging: kpc2000: introduce usage of __packed
  staging: kpc2000: remove unnecessary brackets
  staging: kpc2000: add spaces
  staging: kpc2000: introduce 'unsigned int'
  staging: kpc2000: introduce __func__
  staging: kpc2000: remove needless 'break'

 drivers/staging/kpc2000/kpc2000_spi.c | 99 ++++++++++++++-------------
 1 file changed, 51 insertions(+), 48 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
