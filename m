Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7FEE74D2
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68CBF87475;
	Mon, 28 Oct 2019 15:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Z0O+02wlYK4; Mon, 28 Oct 2019 15:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFC2A8657C;
	Mon, 28 Oct 2019 15:17:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B88421BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B290E84AF9
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xZRnuaAnFvCn for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:17:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 278608489C
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:17:55 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id h6so672803qkf.2
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KjRmkuQ5Rd7UqVsdzxjQjRVAZKTs3MyGlH/p0of+zKk=;
 b=m+2v4TtZB3PS8FHefv4LsC4OS2nCvR/f7LU9VXFQKgdj24LFjjmQMv48mLUGoj/tRY
 we9qTd2RqU1EsBFXUeqeYkeBlMamG88e5PpCahItKyJsm0sAAhBT+9dZLg3d4Ua5eTxR
 zlmjlcYfD+WwjXoNd7BY2LDZBx4g8WG5Gx7GQCIQfDkV8BSi9hExbz4tp3kAK7mthViC
 x8RlS+msMI/46a14dA9F3NF4IkKNwtSnPc9N1FaWMsJNsZyRMkGWLkFnPeydlIlSziKS
 KJyCBI0R/EamztDeHfcMzXohtr2gtr0QxBm8SU7E8j8mLPEI2Q1sRolyywscPgdhMxP7
 R6Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KjRmkuQ5Rd7UqVsdzxjQjRVAZKTs3MyGlH/p0of+zKk=;
 b=lvuDXU4G6jDKWlSxf3Q1mqcTv7cx1JzwxWwwviXPmonDodIIR5351m8Ble34hEjCjG
 hR0Bfhw/rRXDCTEvNfXsFz2SZExjpY3dIJyuPbf3NKknPIugWlHXEibpssjTMiQ0LkZr
 EYx1uO9h3cXK7raYJxwnrwW7KZSxqnaMuM283X7FUtoOL+tzl5YyTW+DLDKNcXAraxh5
 IdmO5+QW2cUvUAxLzsT//oR2jaaK7RadZgl4stNtWfGRB1UpXP5ybgJQDlisn7frpVc+
 bEc+FjLwcCqj7toKPoT3EIJmcjX7KTDY3TkaeDULRkEvWIvb3u58GT4vn0cZAPtQaqCv
 fKlw==
X-Gm-Message-State: APjAAAUjW/mDpPEEJWyr5Mo4Nku4zltLR4+bJD1QAgRbEUap1JQ76FC+
 jWbzSzX9Qkp9xvFfFT5w8Gw=
X-Google-Smtp-Source: APXvYqwDiAs6XfOESTx0ouZtOtPNuT0dJAWOJ9+v8l1T0qL35EvPmKNXKvSRzqOSUqaT20OPTZWEGQ==
X-Received: by 2002:a37:648d:: with SMTP id y135mr13161260qkb.65.1572275874107; 
 Mon, 28 Oct 2019 08:17:54 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id o3sm3582797qkf.97.2019.10.28.08.17.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 08:17:53 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:17:49 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: rtl8712: Remove lines before a close brace
Message-ID: <b7eb43f61d3856ad3a3fce6fcf4caad6eebffe79.1572273794.git.cristianenavescardoso09@gmail.com>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix Blank lines aren't necessary before a close brace '}'. Issue found
by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 304d031..1e3e49f 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -289,7 +289,6 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 			r8712_free_recvframe(precv_frame, pfree_recv_queue);
 			prtnframe = NULL;
 		}
-
 	}
 	if ((ismfrag == 0) && (fragnum != 0)) {
 		/* the last fragment frame
@@ -438,7 +437,6 @@ void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
 		r8712_event_handle(padapter, (__le32 *)poffset);
 		poffset += (cmd_len + 8);/*8 bytes alignment*/
 	} while (le32_to_cpu(voffset) & BIT(31));
-
 }
 
 static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
