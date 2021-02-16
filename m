Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA25331D268
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 23:01:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B66687237;
	Tue, 16 Feb 2021 22:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W48WW0SxnFBo; Tue, 16 Feb 2021 22:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA3388701D;
	Tue, 16 Feb 2021 22:01:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31D0F1BF31E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 22:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B0A186DB8
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 22:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apFo7zlQGSCi for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 22:01:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5BF0F86DCA
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 22:01:38 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id t15so15079874wrx.13
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 14:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=q/ewxnk0aYvnPGeUt2ZuJDAaVJgJ4X1z+2lefCJIaxA=;
 b=ABHwdjsloFI4xNT1MOn9nvUOR0+2MjiTHTp1JSejwWZdpjFSfJ2axhjmcAT9BiG6vl
 IACPpRUViD+LzlJalE0nh+BDl1bIUoo3zeUx7jeTp7HKB7LvfB8obs9tXMMIi4nuviUF
 nmKR6Zq9IOvzLbx5MEk2khYb/tVLFwVo72WTOtgHepKlvkthnSy3t92vFgslAbbxNPcJ
 q2lgT++NKaNBtvuzJqK4izr2ynBjFSkzVjKicbR1NN1ZhLon19L2c6IwR8o7NSAG9iFJ
 R9rtyphk6lKoC93YYWXLLbgzfv1cnRYcj9c6+SUcUESKspVVgljyRICWAiW/2FGGQ7Us
 Htqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q/ewxnk0aYvnPGeUt2ZuJDAaVJgJ4X1z+2lefCJIaxA=;
 b=XaofD7dgTW22+0JK35PoDB8rJ+ZD0cDRa0kT4NHJW+Hs/gJUWAc+TOffD3Exu7ZK5W
 bDSfS5R2cwLW+fuoBhUY8OWt4yjj89E5se1IZ943BxPxJHn/HHCoEMVUKZHqEVBJUjbv
 STG1uOSclXabE7xW03bmfkX9OLj9otOq2t2DddGNo/Z1FaUjZwMiW5D3cgaTtQQpEvji
 EZGc0Nx62lWTX4V73zg07VvWzI6NQT0ZeVfTxK8Xs+C/auw6ma13zbuI/5TT4fzQAhBq
 cNF+vA/4xRcjhe4rz1x7OZTL4JxmKWXSqDPUlJHd60biIje2lCnPzyRRPu/kPkGQ1yM8
 +ecg==
X-Gm-Message-State: AOAM5323bmSqXrlohuieGtWJE4Vmn88omSiAhPfzSEFodAlzXA89NIzh
 //vTo+LqMNUhYsBFIdqI7N3mRw==
X-Google-Smtp-Source: ABdhPJzo5h2X2huqBWTPTdm4R3AqUQ+W12CJua3Rv7aR8FeRdKd7ZCHtpnCzP0fQZISAKEnvJ2Q7oQ==
X-Received: by 2002:a5d:5910:: with SMTP id v16mr15097676wrd.304.1613512896747; 
 Tue, 16 Feb 2021 14:01:36 -0800 (PST)
Received: from kernelvm
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id z2sm3725wml.30.2021.02.16.14.01.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 14:01:36 -0800 (PST)
Date: Tue, 16 Feb 2021 22:01:34 +0000
From: Phillip Potter <phil@philpotter.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 0/6] staging: rtl8723bs: remove DBG_COUNTER
Message-ID: <20210216220134.GA82202@kernelvm>
References: <20210215233440.80617-1-phil@philpotter.co.uk>
 <20210216092438.GX2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216092438.GX2087@kadam>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 foxhlchen@gmail.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 yujian.wu1@gmail.com, matthew.v.deangelis@gmail.com, amarjargal16@gmail.com,
 pterjan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 12:24:38PM +0300, Dan Carpenter wrote:
> Looks good.
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> regards,
> dan carpenter
> 

Thank you Dan.

Regards,
Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
