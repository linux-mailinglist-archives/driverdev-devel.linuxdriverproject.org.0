Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDA81814B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:25:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4785E21FAD;
	Wed, 11 Mar 2020 09:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYPheS7FeX3v; Wed, 11 Mar 2020 09:24:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5C05203BB;
	Wed, 11 Mar 2020 09:24:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9841BF5DB
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7529188072
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WFzpwdCV6O7W for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6719787EC5
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 55DB1AC23;
 Wed, 11 Mar 2020 09:24:53 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 0/3] staging: rtl*: Use scnprintf() for avoiding potential
 buffer overflow
Date: Wed, 11 Mar 2020 10:24:48 +0100
Message-Id: <20200311092451.23933-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hi,

here is a series of trivial patches just to convert suspicious
snprintf() usages with the more safer one, scnprintf(), just like
other few patches I've already sent out.


Takashi

===

Takashi Iwai (3):
  staging: rtl8188eu: Use scnprintf() for avoiding potential buffer
    overflow
  staging: rtl8192e: Use scnprintf() for avoiding potential buffer
    overflow
  staging: rtl8723bs: Use scnprintf() for avoiding potential buffer
    overflow

 drivers/staging/rtl8188eu/core/rtw_debug.c     | 16 ++++++++--------
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c |  4 ++--
 drivers/staging/rtl8192e/rtllib_rx.c           |  4 ++--
 drivers/staging/rtl8192e/rtllib_wx.c           |  8 ++++----
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 14 +++++++-------
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c |  4 ++--
 6 files changed, 25 insertions(+), 25 deletions(-)

-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
