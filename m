Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D4E256E6
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 19:42:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C697887A72;
	Tue, 21 May 2019 17:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rc9kykPh6UkD; Tue, 21 May 2019 17:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DF9986450;
	Tue, 21 May 2019 17:42:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00C191BF2FB
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 17:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB9BB86A48
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 17:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDG3Nhdvecst for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 17:42:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 15D9F86B38
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 17:42:47 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id e24so30588524edq.6
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 10:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q1/eAW62EAJcde+3Yh/QNaf7LCM5ne82jfzUJ/PNdeU=;
 b=ix0I3ScyRSa2HuYR9sXZsh737pIZKeeWpw3IKjgqMf51mSBZTA7bIhKA0pvpI0FDc/
 6NH41oduTVu+fGdQbzMPIrGk6K2U/2GAnLl8A8rOiYKDg3pGPBEtDeU0fFI6BQLpb6vr
 aUbTzA3r64hXcOiDD9Kmus6S6WxI+Gu6duV+Ka86oPjeEvRQtpTxmDH/iN3B9NBeEK6u
 PC/QWDYKwj/Uv4n+muGn1UMsWlStiaCgGRmK4l/3whjQ8TyZoflN9gZr7OoRcZ+Vs+Ax
 JbJN/PXplHvqyLEcj3HLzRUDAJydsXS0Dt6fMAgqO8CBCtDUS6BWMlc+qIaNgXabJObX
 7RYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q1/eAW62EAJcde+3Yh/QNaf7LCM5ne82jfzUJ/PNdeU=;
 b=EMqN6SR5ib5CqdM/OfeIHGZOUDff2Obta3OZzhCQpBGMNnBSvFXgcVynI2b2sPpq/1
 WpxFTvH8+6GsNuD95vVVew+XFu4sxCkT+NeVVT8GAj3pRtRv4bYtWiJAjrfxnTlbMPSY
 CB2xfNNua04+TJSKLuQi6iiNmLMWF4xgLX4sKzV05m+j2wHyig+KoFT51SkUPyivASF0
 /umCHIJ5z6NvlEoDbqYVLziqDZhP2yuNOPpq+4gvQG2dDsCOkRLZQ2Yoq4libuLOAuK0
 LmEhvisezooFNvLEacRb3NpJfyIrXfDyMC8rixfHFPf5YAbDPxkBT3/QQzniRlebuagA
 lAYA==
X-Gm-Message-State: APjAAAVUo0qphfES1LoqLlLMXsE5hHjMADwHXqISsaPUpRtcm1tH5t0x
 oh6OaDU6QiVDn66PP6Wsi3E=
X-Google-Smtp-Source: APXvYqzXbe4aG0oHNqV54mxIzxkYtOtDl6ueQqL2rP14D+slzFflcvP7Ric0vEZYdPQ5bbdxJuNW/w==
X-Received: by 2002:a17:906:63c1:: with SMTP id
 u1mr4660298ejk.173.1558460565396; 
 Tue, 21 May 2019 10:42:45 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id e4sm3604949ejm.50.2019.05.21.10.42.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 10:42:44 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192u: Remove an unnecessary NULL check
Date: Tue, 21 May 2019 10:42:21 -0700
Message-Id: <20190521174221.124459-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, John Whitmore <johnfwhitmore@gmail.com>,
 clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clang warns:

drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:2663:47: warning:
address of array 'param->u.wpa_ie.data' will always evaluate to 'true'
[-Wpointer-bool-conversion]
            (param->u.wpa_ie.len && !param->u.wpa_ie.data))
                                    ~~~~~~~~~~~~~~~~~^~~~

This was exposed by commit deabe03523a7 ("Staging: rtl8192u: ieee80211:
Use !x in place of NULL comparisons") because we disable the warning
that would have pointed out the comparison against NULL is also false:

drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:2663:46: warning:
comparison of array 'param->u.wpa_ie.data' equal to a null pointer is
always false [-Wtautological-pointer-compare]
            (param->u.wpa_ie.len && param->u.wpa_ie.data == NULL))
                                    ~~~~~~~~~~~~~~~~^~~~    ~~~~

Remove it so clang no longer warns.

Link: https://github.com/ClangBuiltLinux/linux/issues/487
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index f38f9d8b78bb..e0da0900a4f7 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2659,8 +2659,7 @@ static int ieee80211_wpa_set_wpa_ie(struct ieee80211_device *ieee,
 {
 	u8 *buf;
 
-	if (param->u.wpa_ie.len > MAX_WPA_IE_LEN ||
-	    (param->u.wpa_ie.len && !param->u.wpa_ie.data))
+	if (param->u.wpa_ie.len > MAX_WPA_IE_LEN)
 		return -EINVAL;
 
 	if (param->u.wpa_ie.len) {
-- 
2.22.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
