Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 897D31D70DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 08:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13E9387BE5;
	Mon, 18 May 2020 06:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1DsDg2p-ojte; Mon, 18 May 2020 06:24:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03F43876F6;
	Mon, 18 May 2020 06:24:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 636A21BF2FA
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 06:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5FACE88256
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 06:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTKk2CnYuI5Q for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 06:24:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D1328821B
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 06:24:50 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id u188so8863243wmu.1
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 23:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Fta7gXT+EOyUADbR+Lk2u+VIEaHdT0q5u+GceH6lNDU=;
 b=iV0Te0Vs3Z8AEJNMqLBmTboW0SNDwCPusJANY2ESmGE9nZ0SUAcHvkodI9hvW9rI49
 VN8bGDeFzq/JLWdYN6qd6yydOP0Kx/0nOams4jm/HggyHHrenHI1PTgAnCbfeWCZRPr9
 3iKMmvO2uXxr9Jhi2JdggKk5VOODGknEcQ6k0oPAok1bJwr1cFBQaKvI9eVdQkCeD19T
 7/ghrRYtCwcuKGUm08cSVMQe4Mi3C6txRI7QDPyBcGAtVgGfoL09MKXxRM1IDgDLrTKQ
 Br+3o2Kd78GftVJB/tbOqN2TvgatL+GW53E6VdIA5fYb2cnYxMFnK6MSANtWR7HakvTy
 Loxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Fta7gXT+EOyUADbR+Lk2u+VIEaHdT0q5u+GceH6lNDU=;
 b=j1uGhrzo6NzriFCWazew63bRp7nmbiEPnxwOcExMW2zwUdW7I9rmnAAP3HqtbT8d5k
 v1QGbGRQuhaN9LjKVk0bjlUrbk9/xfGgqDObj4JtbEdpA1E0SudC6R+0oq5gf5f4Cuiv
 rGEM/7MaFFqmLO+2BHJwYePfjgKahIlSdw3kCtJkW4loD6KwqEnJ4fcyThxyMQLDM4qt
 UtsKY/9f6spmj+ev7NODtUQirrKMyw7ipFkj6BhibYF+2sTs1nSRyJpvv2S8ZfeiT7Ke
 i+mj1wfTVous/xYZ2kIzfYlWLJhZWuK6L7ifKa/zDABCP/+/GagNv+1ezOso84oQvtP7
 ssPA==
X-Gm-Message-State: AOAM5337afBmYOQt+iZ48msXHF4TbRDGXPxTa8sOlpZRanDpQrSwkXO4
 BhuaYr1siXp77NEfqgTjfTI=
X-Google-Smtp-Source: ABdhPJz+xQiBxA2Vxj1n4VgBkPt4V4KM0f78JSg2tj7Ih73QAdsS9Y2PCiBSXnbQSKAc6isMP2MIrA==
X-Received: by 2002:a1c:305:: with SMTP id 5mr17228673wmd.60.1589783088585;
 Sun, 17 May 2020 23:24:48 -0700 (PDT)
Received: from dinux ([102.186.187.39])
 by smtp.gmail.com with ESMTPSA id c16sm14852429wrv.62.2020.05.17.23.24.47
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Sun, 17 May 2020 23:24:47 -0700 (PDT)
Date: Mon, 18 May 2020 08:24:45 +0200
From: Mohamed Dawod <mhm.dawod@gmail.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: wfx: Typo fix
Message-ID: <20200518062445.GA13044@dinux>
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

Fixing some typo errors in traces.h file

Signed-off-by: Mohamed Dawod <mhm.dawod@gmail.com>
---

Chagnes in v2:
  - Modifying the mail subject and the commit message
Chagnes in v1:
  - Fixing some typo errors in wfx/traces.h file  

 drivers/staging/wfx/traces.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/traces.h b/drivers/staging/wfx/traces.h
index bb9f7e9..80e131c 100644
--- a/drivers/staging/wfx/traces.h
+++ b/drivers/staging/wfx/traces.h
@@ -32,16 +32,16 @@
  *             xxx_name(XXX)       \
  *             ...
  *
- *   3. Instanciate that list_names:
+ *   3. Instantiate that list_names:
  *
  *          list_names
  *
- *   4. Redefine xxx_name() as a entry of array for __print_symbolic()
+ *   4. Redefine xxx_name() as an entry of array for __print_symbolic()
  *
  *          #undef xxx_name
  *          #define xxx_name(msg) { msg, #msg },
  *
- *   5. list_name can now nearlu be used with __print_symbolic() but,
+ *   5. list_name can now nearly be used with __print_symbolic() but,
  *      __print_symbolic() dislike last comma of list. So we define a new list
  *      with a dummy element:
  *
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
