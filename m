Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B31E4F3D6
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 07:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA63E875CD;
	Sat, 22 Jun 2019 05:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FgLJ-6qOXaHX; Sat, 22 Jun 2019 05:17:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75026875BA;
	Sat, 22 Jun 2019 05:17:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA9711BF5B4
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 05:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5197875BA
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 05:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zOUN8Qjza6Sn for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 05:17:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EX13-EDG-OU-002.vmware.com (ex13-edg-ou-002.vmware.com
 [208.91.0.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3DAFD875B6
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 05:17:37 +0000 (UTC)
Received: from sc9-mailhost3.vmware.com (10.113.161.73) by
 EX13-EDG-OU-002.vmware.com (10.113.208.156) with Microsoft SMTP Server id
 15.0.1156.6; Fri, 21 Jun 2019 22:02:27 -0700
Received: from akaher-lnx-dev.eng.vmware.com (unknown [10.110.19.203])
 by sc9-mailhost3.vmware.com (Postfix) with ESMTP id 3C55341723;
 Fri, 21 Jun 2019 22:02:25 -0700 (PDT)
From: Ajay Kaher <akaher@vmware.com>
To: <aarcange@redhat.com>, <jannh@google.com>, <oleg@redhat.com>,
 <peterx@redhat.com>, <rppt@linux.ibm.com>, <jgg@mellanox.com>,
 <mhocko@suse.com>
Subject: [PATCH v3 0/2] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Date: Sat, 22 Jun 2019 18:32:19 +0530
Message-ID: <1561208539-29682-3-git-send-email-akaher@vmware.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561208539-29682-1-git-send-email-akaher@vmware.com>
References: <1561208539-29682-1-git-send-email-akaher@vmware.com>
MIME-Version: 1.0
Received-SPF: None (EX13-EDG-OU-002.vmware.com: akaher@vmware.com does not
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

[PATCH v3 1/2]:
Backporting of commit 04f5866e41fb70690e28397487d8bd8eea7d712a upstream.

[PATCH v3 2/2]:
Extension of commit 04f5866e41fb to fix the race condition between
get_task_mm() and core dumping for IB->mlx4 and IB->mlx5 drivers.

[diff from v2]:
- moved mmget_still_valid to mm.h in [PATCH v3 1/2]
- added binder.c changes in [PATCH v3 1/2]
- added [PATCH v3 2/2]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
