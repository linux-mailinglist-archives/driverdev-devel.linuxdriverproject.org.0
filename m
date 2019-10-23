Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D81FE209D
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 18:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A055876DA;
	Wed, 23 Oct 2019 16:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDf9VWQ4NZiy; Wed, 23 Oct 2019 16:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 051E0876C3;
	Wed, 23 Oct 2019 16:30:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56DAE1BF2FF
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51170875D8
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Txm2VFGAAIJz for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 16:30:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B7EAC875AD
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 16:30:37 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id e66so20313897qkf.13
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 09:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NYgftd2K8E8go6dCNMYIgx6K/W9Ge4PxegoF3wHYU3E=;
 b=dCy1E55hDsAjxQkiX5GhMpmqTL9uI76H1e5PNjFchBvecUy2B+e1tODI0wXOMWN1sn
 0MCyWyrDehNtD9FvKAe6ROFsAo9oRz3xtsCeQBFrbu69fkuYDCE9gLLYwMj+TC+zT0By
 AIV784ejMABZAch9RDozoOmtn54UBvrQsmyfJMpfM8JWfgePgY6lQ1uxe43iHTZW8hq6
 FpNllPsdx2qsAz8l8YVIB1sGiJ+QiPVDMMjAMoOYWrUyV59KDXNyc3nnwXeORn8FP45w
 xaQloBDs7mplIsGlL6bSSDbjxJHGlnonUW/0S6Q472CUqR4zMzxhAC+pob2XJrG24iLk
 /foQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NYgftd2K8E8go6dCNMYIgx6K/W9Ge4PxegoF3wHYU3E=;
 b=JU1r3g0K2TaVA08gwbB69KfZTdcrrgOV9l5WA+FZe6WAKkQVunTJdMw+a6PmPIaPyM
 lHxeB7EfKtKbi8DeaQz5aA6b90v0gMT0jq2Gz1tkNBG3OYNssbnwNAVIun33pEeK2QS6
 pTNCuda54qGzgkO3yCNVV3qG3UTIAc65G7EwidprMR7z3WLDbFIssi53AafzEADzZ9zk
 MWaxvH2k6Af54o7d7QIS7jXiwEEt1+ssgDBSEXaAnHa3qVsUPZV73Xz46OqM5rqs0WMe
 rvPpP//Fpl/J+fAH86yfqR4CFkJ+0nlZaUQ98TrRuSEoW55sgatGVbaigp/IIvWFtcjz
 5/yw==
X-Gm-Message-State: APjAAAUUv5ZnXfDi2WFldylHrhUKKZrka7k+81LigJbHBYZZAzYB7ycr
 9ZoSUyT3hNLBlKRphV4MPA0=
X-Google-Smtp-Source: APXvYqwxkA4DrX9v8F+Q+HJoksaXxlOaxtpEDuojTHcca2QXtnQzSaI2etcK0PsD1F+c+7S/Kv2e9A==
X-Received: by 2002:a37:7b44:: with SMTP id w65mr9301660qkc.409.1571848236668; 
 Wed, 23 Oct 2019 09:30:36 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id t13sm8349067qtn.18.2019.10.23.09.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 09:30:36 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH v3 0/2] staging: sm750fb: format description of parameters to
 the kernel-doc format
Date: Wed, 23 Oct 2019 13:30:12 -0300
Message-Id: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cluster comments that describes parameters of functions and create one
single comment before the function in kernel doc format.

Gabriela Bittencourt (2):
  staging: sm750fb: format description of parameters in accel.c
  staging: sm750fb: format description of parameters in accel.h

 drivers/staging/sm750fb/sm750_accel.c | 72 +++++++++++++++----------
 drivers/staging/sm750fb/sm750_accel.h | 75 ++++++++++++++++-----------
 2 files changed, 90 insertions(+), 57 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
