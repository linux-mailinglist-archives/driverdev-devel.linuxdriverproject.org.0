Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37689320B6A
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:32:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98B7B6F527
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 15:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8bjsBqANKh6H for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 15:32:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 744C76F506; Sun, 21 Feb 2021 15:32:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A62F606E5;
	Sun, 21 Feb 2021 15:31:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8712C1BF954
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75D6E83279
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ABSn7IEc1ci7 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 15:31:43 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id A4719833CE; Sun, 21 Feb 2021 15:31:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0C4A833CE
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:31:34 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id b21so8500190pgk.7
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 07:31:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FJwLUK5Y+uvXnv0u3F+27KKfrXN2CvtQs9gB7otpFhU=;
 b=LVOfcTrvpuxoLuoVaTtCPMz5itf4NIk6TmX3mjwpFumtTWxCKi0dVuPWBgf/JSoCZz
 nfRL2cHHY8m3v9DzmXDmTIGZCyMnop9Zp8xSqBbppN9DuCbKjwNQ/ZSQ21l6lDI+XtlX
 D+g5hwGaxfVUv1lMbmM1gGMqbPo4VMaO6OqwAkrTRxz2e6NvESIhug4YbN0/ilvqEag6
 M6eSKorkIX7aU5lBX+0V/hgQ21JpW/BGXiwjTstBMFfwtbG92VfzxvzLFbFZhCKf/bYl
 LqHEutughvf+vP7dFX9HXZJ8oOZJ0goI3cYhEfzLRyM2jbaL+fhiR0XssRC9pqQZ6bqY
 yvxQ==
X-Gm-Message-State: AOAM531ORtD4CkKih8IKSIAQp3o2zSgu0/g1jXTZPVIUWiIQ3c6s3dwg
 BOiUgdOuOi6QvkxrowqhZkM=
X-Google-Smtp-Source: ABdhPJyQfbpOGU2Lj4gfozHmRXJXahPKqV0HmUcLyQ7TPdrdAgEIhm6NIf+EIkFg7eE53tA9XWyOBA==
X-Received: by 2002:a65:5c44:: with SMTP id v4mr16063998pgr.362.1613921494284; 
 Sun, 21 Feb 2021 07:31:34 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id b22sm75647pfo.23.2021.02.21.07.31.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 07:31:33 -0800 (PST)
Date: Sun, 21 Feb 2021 21:01:28 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH 2/2] staging: wimax/i2400m: convert __le32 type to host
 byte-order
Message-ID: <87f93e091f736cb422f1d557fa5a2ac752f057a8.1613921277.git.mail@karthek.com>
References: <cover.1613921277.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613921277.git.mail@karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix sparse type warning by converting __le32 types
to host byte-order types before comparison

Signed-off-by: karthik alapati <mail@karthek.com>
---
 drivers/staging/wimax/i2400m/fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index 92ea5c101..f09de1810 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -511,7 +511,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
 			opcode, i2400m_brh_get_response(ack));
 		goto error_ack_failed;
 	}
-	if (ack_size < ack->data_size + sizeof(*ack)) {
+	if (ack_size < le32_to_cpu(ack->data_size) + sizeof(*ack)) {
 		dev_err(dev, "boot-mode cmd %d: SW BUG "
 			"driver provided only %zu bytes for %zu bytes "
 			"of data\n", opcode, ack_size,
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
