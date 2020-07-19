Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDDE2251E4
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 14:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AB5472043C;
	Sun, 19 Jul 2020 12:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q-SH6AeMSfM4; Sun, 19 Jul 2020 12:39:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B59C20403;
	Sun, 19 Jul 2020 12:39:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A1681BF42E
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 12:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8959A85700
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 12:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBDfaoBfzkEz
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 12:39:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E395E84FB1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 12:39:32 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id l6so7427651plt.7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 05:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kw0iLXfAL+tm3EAXlKa2KuwBi+qK0C1hyFSOycsehwY=;
 b=hNGllQ1+DpluBK9RpbBRWIhIpu8cbAKbGR+S+SxsdY5diWCcPpncbncvkqwvwjZcIP
 DqgWKWbtQmZItfDi5U5i1hBCqYLNf63cjbcpkUQmEJ6e3ow/LiJBW9OVOYggyK4dfQkI
 cEHE96AoZDugTDv+BBnq+71DxoTwW/yaw33kVMYJ/znQgxBQxVvLvSVPp85ajA3c8AfM
 LwJlNuuwRT4VaP1X8x0azrxg0tR+FBrGG2ct0PZmDJGBVC+ldgh0m2RdXP+RplJ9+yV1
 mnXAzKkdWm/vmaxUgZvMLW/qjopEvkUoq9scDrMYmQ+hQ5l5WeboKVKG723AEgqYoHPU
 Fn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kw0iLXfAL+tm3EAXlKa2KuwBi+qK0C1hyFSOycsehwY=;
 b=PzFCKp/vANZNdOphxhcBy6KihEVzs6xBL8xSpbRORyvWu2uO2mpeCQf7vxvgj/FEYk
 8xyoVaN98RGVv6VWIFAtwobzTpn3DxzXBDYYl8GYywotpFmvuva8INeCheAm+B2Qe/ja
 z6n1gELlB0ZkFQlDIIjbMst41y8eXX5ofngCao+GzOHb+h7MTcdIJYYaqYNfzDVA7iAA
 0ea9/QOojbmEwjDvrCq9kQjt3hmRwrkaxCEJDTPqf+nyE4naPOcbZ3ZCcAHcIv6hvJj9
 3IedDuaVyE0bR60ooDwpqrBH/IR43rudJjsVim88rrXf1gsiBrRfnszNrnec+s0g4F08
 6q3Q==
X-Gm-Message-State: AOAM530arq9HXPj5IlqH3nKiZq69FC241RgjrOs7CZBBkrYDTpatRmS4
 1nt18QBDTDH5y4tvF7eiOIlLolXnIA==
X-Google-Smtp-Source: ABdhPJwDmB4dR14cWt9sTpyhkIUnLt3SX1r7c0fQLgbY6vlDgOTH1dCAskKE+5fFZoytZna2vj6N8w==
X-Received: by 2002:a17:902:a60e:: with SMTP id
 u14mr14958749plq.238.1595162372121; 
 Sun, 19 Jul 2020 05:39:32 -0700 (PDT)
Received: from blackbox.localdomain ([112.133.248.236])
 by smtp.gmail.com with ESMTPSA id d9sm12362226pgv.45.2020.07.19.05.39.30
 for <driverdev-devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jul 2020 05:39:31 -0700 (PDT)
Date: Sun, 19 Jul 2020 18:09:28 +0530
From: Anoop S <anoop.skumar1507@gmail.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH] Staging: rtl8188eu: core: Fix coding style issue
Message-ID: <20200719123928.GA47018@blackbox.localdomain>
References: <20200718103125.62528-1-anoop.skumar1507@gmail.com>
 <20200719092437.GA220266@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719092437.GA220266@kroah.com>
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

On Sun, Jul 19, 2020 at 11:24:37AM +0200, Greg KH wrote:
> On Sat, Jul 18, 2020 at 04:01:25PM +0530, Anoop1507 wrote:
> > From: Anoop S <anoop.skumar1507@gmail.com>
> > 
> > This fixes the following checkpatch.pl warning
> > WARNING: Prefer using '"%s...", __func__' to using 'rtw_tkip_decrypt', this function's name, in a string.
> > 
> > Signed-off-by: Anoop S <anoop.skumar1507@gmail.com>
> 
> It would be great to have your full name here, is that how you sign
> legal documents?
> 
> thanks,
> 
> greg k-h

Hi ,

My full name is Anoop S .

Thanks for reviewing, this my first kernel patch .
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
