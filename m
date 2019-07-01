Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9625B5B917
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 12:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F3CC204F3;
	Mon,  1 Jul 2019 10:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOBkxSOZspDx; Mon,  1 Jul 2019 10:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D2AA204FF;
	Mon,  1 Jul 2019 10:33:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1619F1BF591
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 10:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 12E1F8651F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 10:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQCmdc9nQQSw for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 10:33:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EX13-EDG-OU-001.vmware.com (ex13-edg-ou-001.vmware.com
 [208.91.0.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8A98F8651E
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 10:33:07 +0000 (UTC)
Received: from sc9-mailhost3.vmware.com (10.113.161.73) by
 EX13-EDG-OU-001.vmware.com (10.113.208.155) with Microsoft SMTP Server id
 15.0.1156.6; Mon, 1 Jul 2019 03:33:04 -0700
Received: from akaher-lnx-dev.eng.vmware.com (unknown [10.110.19.203])
 by sc9-mailhost3.vmware.com (Postfix) with ESMTP id 130BC411F8;
 Mon,  1 Jul 2019 03:32:59 -0700 (PDT)
From: Ajay Kaher <akaher@vmware.com>
To: <aarcange@redhat.com>, <jannh@google.com>, <oleg@redhat.com>,
 <peterx@redhat.com>, <rppt@linux.ibm.com>, <jgg@mellanox.com>,
 <mhocko@suse.com>
Subject: [PATCH v5 0/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Date: Tue, 2 Jul 2019 00:02:08 +0530
Message-ID: <1562005928-1929-4-git-send-email-akaher@vmware.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562005928-1929-1-git-send-email-akaher@vmware.com>
References: <1562005928-1929-1-git-send-email-akaher@vmware.com>
MIME-Version: 1.0
Received-SPF: None (EX13-EDG-OU-001.vmware.com: akaher@vmware.com does not
 designate permitted sender hosts)
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
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, amakhalov@vmware.com,
 sean.hefty@intel.com, srivatsab@vmware.com, devel@driverdev.osuosl.org,
 linux-rdma@vger.kernel.org, dledford@redhat.com, akaher@vmware.com,
 riandrews@android.com, hal.rosenstock@gmail.com, leonro@mellanox.com,
 jglisse@redhat.com, viro@zeniv.linux.org.uk, gregkh@linuxfoundation.org,
 yishaih@mellanox.com, matanb@mellanox.com, stable@vger.kernel.org,
 arve@android.com, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org, mike.kravetz@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

coredump: fix race condition between mmget_not_zero()/get_task_mm()
and core dumping

[PATCH v5 1/3]:
Backporting of commit 04f5866e41fb70690e28397487d8bd8eea7d712a upstream.

[PATCH v5 2/3]:
Extension of commit 04f5866e41fb to fix the race condition between
get_task_mm() and core dumping for IB->mlx4 and IB->mlx5 drivers.

[PATCH v5 3/3]
Backporting of commit 59ea6d06cfa9247b586a695c21f94afa7183af74 upstream.

[diff from v4]:
- Corrected Subject line for [PATCH v5 2/3], [PATCH v5 3/3]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
