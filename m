Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E57C80828
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 21:59:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B927685C95;
	Sat,  3 Aug 2019 19:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TffF973eSQYw; Sat,  3 Aug 2019 19:59:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF9A184E24;
	Sat,  3 Aug 2019 19:59:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B2A01BF20F
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 19:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 57E618511B
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 19:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPc6zeKVuPrz for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 19:59:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EX13-EDG-OU-001.vmware.com (ex13-edg-ou-001.vmware.com
 [208.91.0.189])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D5F1684E24
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 19:59:38 +0000 (UTC)
Received: from sc9-mailhost2.vmware.com (10.113.161.72) by
 EX13-EDG-OU-001.vmware.com (10.113.208.155) with Microsoft SMTP Server id
 15.0.1156.6; Sat, 3 Aug 2019 12:59:31 -0700
Received: from akaher-lnx-dev.eng.vmware.com (unknown [10.110.19.203])
 by sc9-mailhost2.vmware.com (Postfix) with ESMTP id 8FFB1B27B5;
 Sat,  3 Aug 2019 15:59:30 -0400 (EDT)
From: Ajay Kaher <akaher@vmware.com>
To: <aarcange@redhat.com>, <jannh@google.com>, <oleg@redhat.com>,
 <peterx@redhat.com>, <rppt@linux.ibm.com>, <jgg@mellanox.com>,
 <mhocko@suse.com>
Subject: [PATCH v6 0/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Date: Sun, 4 Aug 2019 09:29:28 +0530
Message-ID: <1564891168-30016-4-git-send-email-akaher@vmware.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564891168-30016-1-git-send-email-akaher@vmware.com>
References: <1564891168-30016-1-git-send-email-akaher@vmware.com>
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
Cc: srinidhir@vmware.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 amakhalov@vmware.com, sean.hefty@intel.com, srivatsa@csail.mit.edu,
 srivatsab@vmware.com, devel@driverdev.osuosl.org, linux-rdma@vger.kernel.org,
 bvikas@vmware.com, dledford@redhat.com, akaher@vmware.com,
 riandrews@android.com, hal.rosenstock@gmail.com, vsirnapalli@vmware.com,
 leonro@mellanox.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 gregkh@linuxfoundation.org, yishaih@mellanox.com, matanb@mellanox.com,
 stable@vger.kernel.org, arve@android.com, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, torvalds@linux-foundation.org,
 mike.kravetz@oracle.com
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

[diff from v5]:
- Recreated [PATCH v6 1/3], to solve patch apply error.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
