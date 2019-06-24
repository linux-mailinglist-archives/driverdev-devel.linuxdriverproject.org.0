Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1915550B6A
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 15:03:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C03885623;
	Mon, 24 Jun 2019 13:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yA0O59EWQRNK; Mon, 24 Jun 2019 13:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5912855CC;
	Mon, 24 Jun 2019 13:03:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6D111BF387
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 13:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE720855CF
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 13:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nm_A8tF3Nuur for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 13:03:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EX13-EDG-OU-001.vmware.com (ex13-edg-ou-001.vmware.com
 [208.91.0.189])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C12B9855CC
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 13:03:32 +0000 (UTC)
Received: from sc9-mailhost3.vmware.com (10.113.161.73) by
 EX13-EDG-OU-001.vmware.com (10.113.208.155) with Microsoft SMTP Server id
 15.0.1156.6; Mon, 24 Jun 2019 06:03:17 -0700
Received: from akaher-lnx-dev.eng.vmware.com (unknown [10.110.19.203])
 by sc9-mailhost3.vmware.com (Postfix) with ESMTP id 7BFB44141B;
 Mon, 24 Jun 2019 06:03:25 -0700 (PDT)
From: Ajay Kaher <akaher@vmware.com>
To: <aarcange@redhat.com>, <jannh@google.com>, <oleg@redhat.com>,
 <peterx@redhat.com>, <rppt@linux.ibm.com>, <jgg@mellanox.com>,
 <mhocko@suse.com>
Subject: [PATCH v4 0/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Date: Tue, 25 Jun 2019 02:33:06 +0530
Message-ID: <1561410186-3919-4-git-send-email-akaher@vmware.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561410186-3919-1-git-send-email-akaher@vmware.com>
References: <1561410186-3919-1-git-send-email-akaher@vmware.com>
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
Cc: devel@driverdev.osuosl.org, dledford@redhat.com, matanb@mellanox.com,
 linux-mm@kvack.org, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
 yishaih@mellanox.com, jglisse@redhat.com, stable@vger.kernel.org,
 hal.rosenstock@gmail.com, leonro@mellanox.com, riandrews@android.com,
 akaher@vmware.com, arve@android.com, amakhalov@vmware.com,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 mike.kravetz@oracle.com, sean.hefty@intel.com, srivatsab@vmware.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

coredump: fix race condition between mmget_not_zero()/get_task_mm()
and core dumping

[PATCH v4 1/3]:
Backporting of commit 04f5866e41fb70690e28397487d8bd8eea7d712a upstream.

[PATCH v4 2/3]:
Extension of commit 04f5866e41fb to fix the race condition between
get_task_mm() and core dumping for IB->mlx4 and IB->mlx5 drivers.

[PATCH v4 3/3]
Backporting of commit 59ea6d06cfa9247b586a695c21f94afa7183af74 upstream.

[diff from v3]:
- added [PATCH v4 3/3]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
