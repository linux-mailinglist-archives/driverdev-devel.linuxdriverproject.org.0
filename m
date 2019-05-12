Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A154D1ABFF
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 14:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC04685775;
	Sun, 12 May 2019 12:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48n2PbMFHD3z; Sun, 12 May 2019 12:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97528853E5;
	Sun, 12 May 2019 12:19:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A0201BF419
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 12:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6569121561
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 12:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNJWyF2WKXwM for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 12:19:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D00132150A
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 12:19:30 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f12so2993805plt.8
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 05:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=XnvQJc31NkYJDKHGe2ZPAaF9BNwwW3ZlTSoXFk3nhO4=;
 b=Qni6gC2qcHVxnGYXbzGXFA9Yp5N6QGoVnRMAzbqDpG5X4dbAjsX3knozjJcOCcsecR
 GOzEjXGzJkgzewVsUxOpYfTjVOHxBedYDgI2eB//Qw4tqPeHpxAUq1/yEzzt/plXutlS
 1OMRMgzbAZErJJbiqmvqlTytA3mDI5Tz3t6eZw3Tq1YK65C6kZRu75Wa+dLFhGsxf254
 dwFRqJRyR9jVVMoJpS49BSe5kt6wfvu2Yx1w3c9JTX8DH9mUCj9I5Oqfiqh+fjEfrNmi
 F0U/wosSM5aAlfjQSKX6ATNwB8/GzzNFXMpxmvujMUU0J0xDVoSe75ZRGYSD3fjOaQWN
 105w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=XnvQJc31NkYJDKHGe2ZPAaF9BNwwW3ZlTSoXFk3nhO4=;
 b=Ih55qoRT4Dz7Lr9WbrlpOH3zxrXNulBdHnq+hUH6+VouX4v6gHjO1QX+ANuDz7bzWL
 6nwoNf9YupNsMX8EhD6lORBbcPEDpQ4r4xgac1ScEAvsFhiF4/GHm5DnaQyyvy97p09i
 aCy/pOoBH6RsFejgtiZgTOkq7A+k3CT/JevnSH/WXB4yxBGrDhgUyjZNCR/ZbEWfRUWX
 QYKiHQ9Ugtm5gkb9J9Y6XXn3QgTiTawIhUSHucaKWWWBYjzFfHVgD/zQ0hX1tKGjiguG
 M3lZ/fcfMFYIcd+QRcOw6dUvo2xXww20nvKx8c47/p0/ft1Vws6j9Wml7HcST/cYTST2
 X+XQ==
X-Gm-Message-State: APjAAAWUd104jYMh5PCnt8Wgyo/4siJqlO2cYTyxeWf7cvJXozVxLfU/
 zBhXsJ99jK96kZrYT9DMMKw=
X-Google-Smtp-Source: APXvYqyC83gg6Ai8bfXkwZua15B6U4OweOWKPKmYAfnGwlo5mj9QUpnoGiMZe3g8HkfI0XukjYdO9g==
X-Received: by 2002:a17:902:2827:: with SMTP id
 e36mr24196393plb.45.1557663570546; 
 Sun, 12 May 2019 05:19:30 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id k6sm9195910pfi.86.2019.05.12.05.19.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 05:19:29 -0700 (PDT)
Date: Sun, 12 May 2019 17:49:23 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 viswanath.barenkala@gmail.com
Subject: [PATCH] staging: rtl8723bs: core  fix warning  "Comparison to bool"
Message-ID: <20190512121923.GA28044@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix below issue reported by coccicheck
drivers/staging/rtl8723bs/core/rtw_cmd.c:1741:7-17: WARNING: Comparison
to bool

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index ecaa769..fcd26e1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1738,7 +1738,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
 			pstapriv->tim_bitmap &= ~BIT(0);
 			pstapriv->sta_dz_bitmap &= ~BIT(0);
 
-			if (update_tim == true)
+			if (update_tim)
 				update_beacon(padapter, _TIM_IE_, NULL, true);
 		} else {/* re check again */
 			rtw_chk_hi_queue_cmd(padapter);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
