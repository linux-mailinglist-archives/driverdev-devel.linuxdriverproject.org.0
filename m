Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE30220D05A
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 585F587315;
	Mon, 29 Jun 2020 17:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwdUoHBhCX_n; Mon, 29 Jun 2020 17:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D3F18730F;
	Mon, 29 Jun 2020 17:16:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B088F1BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A36C420523
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dB7KfI5ImZRU for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 8B1BE2010B
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:16:51 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id b6so17287471wrs.11
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cjj43rB6y1HIR70lh4W6BkNz4kpzs/8/avBfXYS2KVQ=;
 b=DGLqUwJF7JNmCO4+oz4CqxQoCeQferLTave4aukz0NXq7xqXbkR+WNMEiBUEGaq4DF
 IUVksEKfcuX4qgVjp7Pis4gXQ0G70+b12TpGhF2tExWQgCvnMW0HlUTnKCANFO18lhC7
 rsqQ5pEAkLgJDxRT1wmB+b59YiP6tZS2l1R95JoKyr81qNPKQW7nZv8f3Pt3nDK7CL8t
 S7y7kaXiTM/cGz2yPINdrzrRE47YH/m8ugW2ifuJYfm25TsgrzWON3ON50uGAO4ni13U
 FoJ8QLW+GHE40rsobCJxFBhBuBVohF43n56B1NUk+hhxjLKDG0nvDIKlNp7sxHeQFlir
 2qVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cjj43rB6y1HIR70lh4W6BkNz4kpzs/8/avBfXYS2KVQ=;
 b=gJ3VliUohjxoQtKAXKLnqHi4bqomupHCd20LfmZ3YkcArcFp+TwjttiHjbtmgCFIHu
 Ourae/CG8mHgYVyJEfKvNeCaJBh1gx2CGHzsUZNAT3hspdMsKWHwsmbGD1xkpBXSRt0Z
 nskfBVUHfOhMsgr05gO76xtDKXWI5mfwh53h1iEQ0mnDTJaBulHzEcGiM05KqQ6VkEzm
 h0NiMybtJyS8A6Pn4smn7la08lU7Kt1kBl2rWgJ4iSEr/aHgiHrnn5UFHjT0OFEO8Gud
 Xh7DS6P1K6w5I/is/3Vvc+n22lD9pl4XgJTEr+H+lgFnzx56b4mwdw+sazzqRSXaPmZO
 0ceQ==
X-Gm-Message-State: AOAM530elxX6uFl2xZRjSBk6LR6zIjVqkc7YpdEt7OqcxW8u3SbTAxlq
 rdgYYBoKioKlE3Rd7N+6wf0=
X-Google-Smtp-Source: ABdhPJyMZ9oWhKaPvA5+S+FE3PPIaQa8rJXfKOfDpcYuuZiaa6XtQkmScybvpHhgfugQ/OC9eTjO7g==
X-Received: by 2002:a5d:6651:: with SMTP id f17mr19149973wrw.29.1593451010130; 
 Mon, 29 Jun 2020 10:16:50 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-176.178.011.pools.vodafone-ip.de. [178.11.230.176])
 by smtp.gmail.com with ESMTPSA id n14sm432728wro.81.2020.06.29.10.16.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 10:16:49 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8723bs: remove some ieee80211 constants from
 wifi.h
Date: Mon, 29 Jun 2020 19:14:04 +0200
Message-Id: <20200629171405.7711-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629171405.7711-1-straube.linux@gmail.com>
References: <20200629171405.7711-1-straube.linux@gmail.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The constants IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL and
IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA are not used in the driver
code and, if ever needed, available from 'include/linux/ieee80211.h'.
Remove them from wifi.h.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 88a6e982ce01..f75df547a946 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -657,11 +657,6 @@ struct rtw_ieee80211_bar {
 	__le16 start_seq_num;
 } __attribute__((packed));
 
-/* 802.11 BAR control masks */
-#define IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL     0x0000
-#define IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA  0x0004
-
-
  /**
  * struct rtw_ieee80211_ht_cap - HT capabilities
  *
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
