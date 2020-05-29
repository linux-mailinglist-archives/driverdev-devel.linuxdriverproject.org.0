Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 424521E884F
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:01:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4D10874C7;
	Fri, 29 May 2020 20:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6o7ixGX7KBh9; Fri, 29 May 2020 20:01:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A734187534;
	Fri, 29 May 2020 20:01:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D8991BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 586EF89413
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yM2ZWflDLO7x for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:00:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 04AD2893E9
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:58 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MvbO4-1ipghK3Ghq-00saMm; Fri, 29 May 2020 22:00:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 3/9] staging: media: atomisp: annotate an unused function
Date: Fri, 29 May 2020 22:00:25 +0200
Message-Id: <20200529200031.4117841-3-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:lfZ3e7lRj4Ybe7StyQFbwkg2UGWjMbId3/8VrkKq0pNLWCLtM32
 kC18Il1MDaISgD8gL2sMI5OwZFnVA3Rp33VA5sfA/Q7v/zYyARV33SRjZVjcGToRqQsksR5
 KzWi9fEMSZvDjbXjeXC4SnaJQNdaCvhSbb99ZlJqDMlLiXk9jIhHcedSRmM/hNHAvuF0OTP
 t2vLHRR7riPg7pNu9GOXw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:+LkRWSfmL0E=:9l56I5kcdmKr3QZXmDnZ+S
 sXoyK6fxxiDQqDFYRgOZG2PDT38WNHL+fT4N0cyDhyxZ4bsn77lxBIDZ31hbz3aM8pQ0DgzXK
 rovnECe6vjyY2EnMqLW62m45LXfkPeJ/hyTQ96DYeDNdWNFQof98gkgpEMlMVgQ4yimM5fIbC
 Qhv4IDC+Sx/28RHUQduOzPVCauzNO3zTnm3HyYj9+b5FSUJakM9WfHP2SWtW7+iNuRUs7JcEd
 QlZLrH+IADO71tIplE+RSZITLkv6YlQH3ccpo7CEBx+MXImuJWD5deMVvVKKGzD+IFhjg8nPn
 e/m2nQion0ZiG5uVTKvBdNxwjVhGw4noq4xdvayzpCgjjU4P4ZtUhUfIWs5qkxFRK6ymof5Me
 SKpsU/bV/yROi3suZ3+Z3Irscj5+UrIm1uUfudlpYAvb5qMUOtxMixamm51+lWJylZqFaSfGY
 gOFfr21E/HeWSr8IRE6+MUjXGaycqP9gwBEnGtpo89kk7tHdDdoeSbFK32BXB4llhRfNU8Anh
 2P7352T7x4aTMG1aj9lSUhXv8IM/IMWCuKrsbm1Rl4h52PZAZor/fRo6fqfsguCY/nil7xaxa
 6PlYDAvOdVDjaN4JcyvOK33SLdNQlJSPaZMIraTwRpn3HIkyP1h74NRReHH2lWgJ7eFZLCfEc
 bF8eHDs7hMIrsall0NEeNunR8yKDu/k7EHvejkji6GpHpl7aVFE37fEiuu3n8zs6c2UKSofRn
 z6tyFC9id+MrlOQLkqqoeEzmtEG6POwljWd0GxEJvar1K+zhPo4Ra7SHUrkyQCalwrJ9TGg4o
 3n+z/OwgfyZ88xgp90YW//B2L/jkaQ3Fh1dLg0ZoJtaVp5icug=
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

atomisp_mrfld_power() has no more callers and produces
a warning:

drivers/staging/media/atomisp/pci/atomisp_v4l2.c:764:12: error: unused function 'atomisp_mrfld_power' [-Werror,-Wunused-function]

Mark the function as unused while the PM code is being
debugged, expecting that it will be used again in the
future and should not just be removed.

Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 694268d133c0..10abb35ba0e0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -761,7 +761,8 @@ static void punit_ddr_dvfs_enable(bool enable)
 		pr_info("DDR DVFS, door bell is not cleared within 3ms\n");
 }
 
-static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
+static __attribute__((unused)) int
+atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 {
 	unsigned long timeout;
 	u32 val = enable ? MRFLD_ISPSSPM0_IUNIT_POWER_ON :
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
