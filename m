Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F82D54DC2
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA403840FF;
	Tue, 25 Jun 2019 11:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HylpAFvpSQKp; Tue, 25 Jun 2019 11:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F8B88648E;
	Tue, 25 Jun 2019 11:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF48B1BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A24E785EE9
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DqWkMaD3iW3d for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2108385C67
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3lv67MTz8tqm;
 Tue, 25 Jun 2019 13:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462027; bh=iLvilk3A5nMVbj4wrWPv7K8RLB76UFRd6q8XHG8XuSQ=;
 h=From:To:CC:Subject:Date:From:To:CC:Subject;
 b=MkbAjfvRje1hhvYvffs0jUdS48Yk4yvLFdtEfDhITvcppyRUyU8uKrBj+S2CksRzM
 XDyznWD2lkWq7lQNmegG+piSDLPAu5+0OBNcDgJzGuLadANVtiU1FQaou6Em5lh7xH
 zgjk5nnMS53E6Kgl+1l8IX/6jfPVmdfFmjdmuwrDWpnRbAx3d0ljSxRZpQVHvMu5o+
 U3fDSqLk1sWFArtlPBk+17cCJKJNq3UDuwFqsTkJYAg8/EIDXx1aQU6psOAAV5TLUn
 UlTovDd7wUoZDaMZkFYqPNL0ha+OvtPAjF6skyw+eSQh9L1p2Le00rAkJJ//1WHRq1
 UGX11Rj7UFtLQ==
X-Virus-Scanned: amavisd-new at boeck2.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3ls53FCz8tpQ; 
 Tue, 25 Jun 2019 13:27:05 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:26:23 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:26:22 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 0/8] staging: kpc2000: style refactoring
Date: Tue, 25 Jun 2019 13:27:11 +0200
Message-ID: <20190625112725.10154-1-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.21.22.37]
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
  staging: kpc2000: add spaces
  staging: kpc2000: remove unnecessary brackets
  staging: kpc2000: introduce 'unsigned int'
  staging: kpc2000: introduce __func__
  staging: kpc2000: remove needless 'break'

 drivers/staging/kpc2000/kpc2000_spi.c | 142 ++++++++++++++++----------
 1 file changed, 87 insertions(+), 55 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
