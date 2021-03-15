Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AD733C34F
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:06:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 966466F597;
	Mon, 15 Mar 2021 17:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDk-nkloeSDs; Mon, 15 Mar 2021 17:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1D316F504;
	Mon, 15 Mar 2021 17:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88E9B1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 837EC40170
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Opwr47XBi_l for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C637441503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:09 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id x21so18198257eds.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=iZtib7C92hhfdrXtQb4LadYG1xZNnXU82QCKxlMZ9Bk=;
 b=KAq5by1RkCw7lj9vY380qO5QmZT2t+d68MG+ugQryQhOPQyTOtQgK7Kf6EKrfX6xlm
 pN0gU2MxCIipnD6GBxm5mesGSff8m0+S0Z7BYFeVxj/NnfWU5h2FkWe2z1vtUIy1VQyU
 JRiIBthto/MpYKnBKv/Mo0IZfVZvejnqNr0sF2995JGUkPN2iVzW3VMKmqiDI+SPAvPQ
 hkz2rGMiUe6kL7KWLPdPmkju6KD6L726IVdriHnCCGLj4skauWqu3W3SjzNUaoKn5ikk
 mtM7oDsoKR5XpeW/XhYZ3RI/HieSpdAZYgE8Tu+V6MA/5oyoSKuIivVy8od2fnJBVFtg
 R0mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iZtib7C92hhfdrXtQb4LadYG1xZNnXU82QCKxlMZ9Bk=;
 b=YXz04IFwtdh3nGjx5jUdijYA/VamPUbItrgBL2jjn7tgsKUK3jEt2KeGZnneE7bK8k
 8TNh1sW76v+b2ypYV+FZPUk2PgFyb6YbNiwZd4otn9qnYfyLjDJPDwYsWrCCatScBJ3l
 Bu3IFqI1hukI81rcEq0lHoCEnf1qTy5Lr/n4OmxSyEglPQh3DI7x9PteXN0pK+lWbMdl
 BRjuZ59WgKGcC4sRlZJQj9TJjKJGhS4hw9aPIZixoXOi04xvBRDvtuKj7lfHtebmVI0u
 XqTp0E2geV8KE1F0tQ8fK9P4aeYUVT5e+I8vXkOR+3DgtG4tiWcqoRqZxg7VoaaIbEL3
 Li0A==
X-Gm-Message-State: AOAM533St1GAaqzwSotg3YDxLxTdtwnUvqz1f7LKPSjMAX8IshhBSxEy
 aaKUlBwY/yRsfnSgKRBmjpY=
X-Google-Smtp-Source: ABdhPJwo55f4JxjLRwtzIH5WP+Qpqmp2qg94H38eOKCT+NW8XJ8F5ni3KWyjgyW7T8adERvorJy49Q==
X-Received: by 2002:a50:f391:: with SMTP id g17mr30863036edm.26.1615827968052; 
 Mon, 15 Mar 2021 10:06:08 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:07 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 01/57] Staging: rtl8723bs: fix spaces in rtw_cmd.c
Date: Mon, 15 Mar 2021 18:05:22 +0100
Message-Id: <20210315170618.2566-2-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #206: FILE: ./core/rtw_cmd.c:206:
    +static void c2h_wk_callback(struct work_struct * work);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index bdb77bd46a20..cc10bd5ffb31 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -203,7 +203,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 	return res;
 }
 
-static void c2h_wk_callback(struct work_struct * work);
+static void c2h_wk_callback(struct work_struct *work);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
