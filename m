Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE7126F9A7
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 11:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33337872E7;
	Fri, 18 Sep 2020 09:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IakxjoybsMfa; Fri, 18 Sep 2020 09:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 215AA872EA;
	Fri, 18 Sep 2020 09:55:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 851711BF2A3
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 81916877D9
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wyk8XzyOBqzW for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 09:55:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A207877C5
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 09:55:10 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M597q-1kI7Am0ZlM-001EGb; Fri, 18 Sep 2020 11:54:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-rpi-kernel@lists.infradead.org,
	nsaenzjulienne@suse.de
Subject: [PATCH 0/5] staging: vchiq: stop using compat_alloc_user_space
Date: Fri, 18 Sep 2020 11:54:36 +0200
Message-Id: <20200918095441.1446041-1-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:RIMQCO9sg3s7Q8uUPOZE8Q3ZaERCR8FzdWbwg646liLFhy7ixQA
 2jT7XzbAVGuaTErny+Vn/YxqDlCJk+rupKSMEl3Wf2thyWaXOONIcRbLmrVXD0IzHZavQKu
 UOUJPU4NYOTyZLFwZHHMQYqfUudD8RWjvAKgXbUk+iWiRIqOJuor2tB0WGRMP5NWxF2lRcn
 l+LCNOW5M0kDOb4MYZSCw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:0u4mE8JqKjw=:6Y0WvuNn4FoaFfGM/Jqg70
 Yb0XhB2dy3ufIBhZqj+aYi+QcfbtjOjAvvmu9htz615k9TWylT3xGtqk+SAlHtCYgXiyoq5Cm
 StEv/hF84Q57nt6rB36m0yLtnMjUnF+ey71eeAbWVRBYHRXgagevMIXn/696sHxzdlciv0gdr
 tt1wO26rP9JkfX/QhhxvQQPuBJIxuYdXk9vyGNeTukiwVCPAtQIMMxw6aDnxehTuc4mr2/m3v
 7qmgHxIc44kADlaEifJFS0fDbX1UivPBOTLVDfZ8g42+73Ut9m5XCDBLp7W2uOl1MtA1kmDaU
 6y4N6ih/ED9ZM6Wc7qcP6wwwPJOVLwO1vFgqhlqSCntFLDp9cR+H54Q3GVnRa825NDLRVnl5g
 8DnFUFEE5FHs7a9h3HXAPj8SXtg1cjqNd0OP/EkTnIf9TsP5vzw9yE9G+zZ4D564ZXbxBxNWh
 W36Go+I0Qmp1hjb4cZBxnPI1uqK9ZjrK9VaDUtQ+XXaZICqantajSs4oEfs3Y82iACCu008zp
 eKxOVgiFOwAXmzuifLeyyePq39Ja2wNBXPxteE+mht0mkjShFsOems1eEyZplhSE5ut4sGz/L
 SxxGIqzFJ33v6P2MPHs9PxQEyQG3ymLwdooIZf39lnM5UebR1Di4GH0OEIavaDAMLiDrlDoXT
 kVXXBfyUyMsDw374X3NBiutwHv7+mskcp5h8wTmBNBiIOGObx2YLd+TMXhh2CZoarlImR46zI
 IlL0/NwLpiyHLxXstgJ7PTfpUl0S9Z+ajChN6Cf3QUgmd9PDTy/87vqr29W96gOmudmBwR3ci
 CpOMk0lEHLlHzrJ3Az20i2Na2Ci11VdjSWMk1U5wHALh1eeuJaJFaKn8dEbOrLLFe90g1Yl
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
Cc: devel@driverdev.osuosl.org, stefan.wahren@i2se.com,
 Arnd Bergmann <arnd@arndb.de>, gregkh@linuxfoundation.org,
 marcgonzalez@google.com, linux-kernel@vger.kernel.org, hch@lst.de,
 bcm-kernel-feedback-list@broadcom.com, jamal.k.shareef@gmail.com,
 inf.braun@fau.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is one of only a few remaining files using
compat_alloc_user_space() and copy_in_user() to implement the compat_ioctl
handlers.

Change it to be more like the other drivers, calling the underlying
implementation directly, which is generally simpler and less
error-prone.

This is only build tested so far.

    Arnd

Arnd Bergmann (5):
  staging: vchiq: rework compat handling
  staging: vchiq: convert compat create_service
  staging: vchiq: convert compat dequeue_message
  staging: vchiq: convert compat bulk transfer
  staging: vchiq: convert compat await_completion

 .../interface/vchiq_arm/vchiq_arm.c           | 1194 ++++++++---------
 1 file changed, 551 insertions(+), 643 deletions(-)

-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
