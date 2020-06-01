Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 865F71E9D3E
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jun 2020 07:23:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 330AC869BB;
	Mon,  1 Jun 2020 05:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EpxV22YNug94; Mon,  1 Jun 2020 05:23:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EED5686968;
	Mon,  1 Jun 2020 05:23:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED63D1BF574
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 05:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB49E2033D
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 05:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7lmG9pw-qVWo for <devel@linuxdriverproject.org>;
 Mon,  1 Jun 2020 05:23:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 812E228BBB
 for <devel@driverdev.osuosl.org>; Mon,  1 Jun 2020 05:19:53 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id i17so3759536pli.13
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 22:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sO8jcvPiOukatlC6URpKN2G0/iDSlj0IFO4ApIBDM5Q=;
 b=BX8Vuxfjwu6ye+y9HvZFXuGYzvBaaleulIo30K+5I0RyTywGmZuI+Ccn82aMK+DD6j
 LTAyYFs8Tf7WEHAnNkbpOMLmFA9K4+95SXaA6/03MQBwLw7eMrzzm+0MPK4wvWhAHQti
 znXATEvs/CfYBMnvGzmmROla2P1m9VK2R69dkTwpeo58bCHCBbM4bUi7UIfzXUnL2LbV
 tPAGNMUKxb9Elli2yoyDHuMJxqyikf6p5EiFA545v5jcpCTbOqr/Osgrvix5aphY9yvy
 De6me9qB46xlLouxc1gTOZjKaPikpiFA0bOO6U4zUUCRseFzU50SWfJOt616NRjG7an9
 S5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sO8jcvPiOukatlC6URpKN2G0/iDSlj0IFO4ApIBDM5Q=;
 b=cxr8GsV2zGTFkz7B1SyhZUAHAJu2LdrUhiyi4OA+7PXxfWS+WqIRfyRhO/btHjj671
 opaXq0Djh58rlHm7t+9S+5RlGM1+xNRSSN2zGDXKUeuGFeTVFNewApCoLEurt4W0vAlp
 uNI9hfxYCIkqWRrJX8JgEJPW+Z12NDDaDBzLa1kvJmtKyr9IM+qngTSSEAseo8+qih0x
 cuKH8L7ChEY5YFVZI69LSIpfdJ0BhuahgbM1CesM+JiScqnsO6VaGmBD5TEehxgToyLu
 C+lpZeJXQ9N96175+8fxCWNYr+YOZjbRAKO2whuPARfvnz/JfLxQTM0U1lr4Fo2+tKr8
 8N8g==
X-Gm-Message-State: AOAM530cC2t7x2jzl9zoM3IzwwKV+mtwYbYWVi9kF1YBVOX+n1tU01c4
 wko/3s+IiGXsal2DOA9NLAs=
X-Google-Smtp-Source: ABdhPJyY9uOLpdfNARQ7gU6mScXwZv/e5G3IgkWWLW3MEl7XePDvpgX/zsqnAn006JfMQ3kLxIVe1Q==
X-Received: by 2002:a17:902:9f90:: with SMTP id
 g16mr11468281plq.146.1590988793099; 
 Sun, 31 May 2020 22:19:53 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id v9sm6598865pfu.212.2020.05.31.22.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 22:19:51 -0700 (PDT)
Date: Mon, 1 Jun 2020 14:19:47 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Jil Rouceau <jilrouceau@gmail.com>
Subject: Re: [PATCH] staging: qlge: qlge_main.c: fixed spaces coding style
 issues
Message-ID: <20200601051947.GA12667@f3>
References: <20200529151749.34018-1-jilrouceau@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529151749.34018-1-jilrouceau@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-05-29 17:17 +0200, Jil Rouceau wrote:
> Fixed the missing spaces before and after binary operators.
> 
> Signed-off-by: Jil Rouceau <jilrouceau@gmail.com>

This patch does not apply cleanly. I think your base tree is missing
commit ec269f1250c6 ("staging: qlge: Remove unnecessary spaces in
qlge_main.c").
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
