Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89607133047
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 21:07:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E075C8609F;
	Tue,  7 Jan 2020 20:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqMGBWvpuH4E; Tue,  7 Jan 2020 20:07:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 696A88214C;
	Tue,  7 Jan 2020 20:07:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47B8E1BF406
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 20:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D42B20337
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 20:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-9oiD4Ss-oS for <devel@linuxdriverproject.org>;
 Tue,  7 Jan 2020 20:06:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 895EE20336
 for <devel@driverdev.osuosl.org>; Tue,  7 Jan 2020 20:06:19 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MGzDv-1iu8AR0ysl-00E1f1; Tue, 07 Jan 2020 21:06:12 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Martyn Welch <martyn@welchs.me.uk>,
 Manohar Vanga <manohar.vanga@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] vme: bridges: reduce stack usage
Date: Tue,  7 Jan 2020 21:05:43 +0100
Message-Id: <20200107200610.3482901-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:JRQQj5uc/jWLmBmcsVbgZFzF/SPQfVM+WL2b7PT514fxILXtI3S
 1UW+0uFFza6RECIGCNd8Hx8++hEDIfQQyVCpwVhkAaxHy8qmEQBTj0kGKRZW9qrBof5N+nA
 UJuZtN3GQwAYKwHFHojXiTAr3EanzGhQ1rK+aYn82mNJ/gKyVeClYCLBY3EJ5cc9YysVmW1
 dSxaajJkgyaJK5EQ12jMQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Qwc2FlRa0HY=:bo6VqV0/kfs0BM2gR1mFdl
 dLdJp0uzjwnjorHeBYlq0zCsffb9xMeDzjvVuJ3jotfiBKyZRl3lhqeAyAuMWTTT5Gf45fRVO
 HG+5L0KxA2Fw8iFofSLqeUrlzjZN7yIOHb3sQHNibgXJYnFaXNPCi8iRB65r7zAGJ/bRV3Zwl
 2ABi8a62gC9LukUUIlNVL6QTcoOYchpm0Qf49XdXrxVi2eLmml/dUGcjd0DQURAg7A3U1lY/i
 5ercQpXdGVMHhDzaXymAPn6TCdQJ+69TIh8CcdKKA5QBO/dQNJXtkIjdGVtqpu+H91dhcLpYR
 1a/Dbc1uNUufSSpAAyzSXfOSZaZSAPg0WOi3usYzM3Vo4dfLCVm/GZMH9jPxyl7TJ/62dlfDc
 nQkNmoa2tyVsc62w7fHhDRAzAG80pY5LmXQZcR5GiHIIzzUtXi5rcGnCBEw4Wl6XddwrxZpVW
 3OnIJImtvqOWso8MDDQGVWPCfZZNreoHf0vfGZuqchgevDg192GP5VC4YeQBHql9hNu08A7KD
 NfcIEZeh2gtZB6ESJ6+KkljELPF6m0gL9d1Strnhx2Uq/pt7qtrsf0yY5yfRe+FRz089zAFFr
 XzKbYOfZ5RCpWGAG3yduN5pf2j7xv1qjI6Xt0IeSIORyaTIyP1LET5uubK8kPAqVJXWdkxUuQ
 F5D8JX/BMlVZT0ouWXh6tPKJ6ubLBwJ26DkhevCJzskmO9f9LUaUUi2uJrGx62HGj/P/ci2x6
 CJ4YUbLeDkEJpRMcAlxkIJzvtzopPR+Xx2PKpCmM1n1wuGmgRE8re6ZVUMupH2+kcQzBknGt4
 xkw9nW/EUIuIuDP3tO8RU/YXMIUozhGT4ee6Wi/m8RCzpk+L2U/X0zOiX5kda8Lrr2rNu5mnD
 v6oWqffBfT9cAhb1AB1Q==
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
Cc: Oleksandr Natalenko <oleksandr@redhat.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3, the stack usage in vme_fake
grows above the warning limit:

drivers/vme/bridges/vme_fake.c: In function 'fake_master_read':
drivers/vme/bridges/vme_fake.c:610:1: error: the frame size of 1160 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
drivers/vme/bridges/vme_fake.c: In function 'fake_master_write':
drivers/vme/bridges/vme_fake.c:797:1: error: the frame size of 1160 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]

The problem is that in some configurations, each call to
fake_vmereadX() puts another variable on the stack.

Reduce the amount of inlining to get back to the previous state,
with no function using more than 200 bytes each.

Fixes: mmtom ("init/Kconfig: enable -O3 for all arches")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/vme/bridges/vme_fake.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/vme/bridges/vme_fake.c b/drivers/vme/bridges/vme_fake.c
index 3208a4409e44..6a1bc284f297 100644
--- a/drivers/vme/bridges/vme_fake.c
+++ b/drivers/vme/bridges/vme_fake.c
@@ -414,8 +414,9 @@ static void fake_lm_check(struct fake_driver *bridge, unsigned long long addr,
 	}
 }
 
-static u8 fake_vmeread8(struct fake_driver *bridge, unsigned long long addr,
-		u32 aspace, u32 cycle)
+static noinline_for_stack u8 fake_vmeread8(struct fake_driver *bridge,
+					   unsigned long long addr,
+					   u32 aspace, u32 cycle)
 {
 	u8 retval = 0xff;
 	int i;
@@ -446,8 +447,9 @@ static u8 fake_vmeread8(struct fake_driver *bridge, unsigned long long addr,
 	return retval;
 }
 
-static u16 fake_vmeread16(struct fake_driver *bridge, unsigned long long addr,
-		u32 aspace, u32 cycle)
+static noinline_for_stack u16 fake_vmeread16(struct fake_driver *bridge,
+					     unsigned long long addr,
+					     u32 aspace, u32 cycle)
 {
 	u16 retval = 0xffff;
 	int i;
@@ -478,8 +480,9 @@ static u16 fake_vmeread16(struct fake_driver *bridge, unsigned long long addr,
 	return retval;
 }
 
-static u32 fake_vmeread32(struct fake_driver *bridge, unsigned long long addr,
-		u32 aspace, u32 cycle)
+static noinline_for_stack u32 fake_vmeread32(struct fake_driver *bridge,
+					     unsigned long long addr,
+					     u32 aspace, u32 cycle)
 {
 	u32 retval = 0xffffffff;
 	int i;
@@ -609,8 +612,9 @@ static ssize_t fake_master_read(struct vme_master_resource *image, void *buf,
 	return retval;
 }
 
-static void fake_vmewrite8(struct fake_driver *bridge, u8 *buf,
-			   unsigned long long addr, u32 aspace, u32 cycle)
+static noinline_for_stack void fake_vmewrite8(struct fake_driver *bridge,
+					      u8 *buf, unsigned long long addr,
+					      u32 aspace, u32 cycle)
 {
 	int i;
 	unsigned long long start, end, offset;
@@ -639,8 +643,9 @@ static void fake_vmewrite8(struct fake_driver *bridge, u8 *buf,
 
 }
 
-static void fake_vmewrite16(struct fake_driver *bridge, u16 *buf,
-			    unsigned long long addr, u32 aspace, u32 cycle)
+static noinline_for_stack void fake_vmewrite16(struct fake_driver *bridge,
+					       u16 *buf, unsigned long long addr,
+					       u32 aspace, u32 cycle)
 {
 	int i;
 	unsigned long long start, end, offset;
@@ -669,8 +674,9 @@ static void fake_vmewrite16(struct fake_driver *bridge, u16 *buf,
 
 }
 
-static void fake_vmewrite32(struct fake_driver *bridge, u32 *buf,
-			    unsigned long long addr, u32 aspace, u32 cycle)
+static noinline_for_stack void fake_vmewrite32(struct fake_driver *bridge,
+					       u32 *buf, unsigned long long addr,
+					       u32 aspace, u32 cycle)
 {
 	int i;
 	unsigned long long start, end, offset;
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
