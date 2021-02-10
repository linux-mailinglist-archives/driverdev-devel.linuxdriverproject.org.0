Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA174316FF8
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 20:20:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D8196F6AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 19:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oEhq7eh9HcRO for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 19:20:02 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id B672B600BA; Wed, 10 Feb 2021 19:20:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4903C60073;
	Wed, 10 Feb 2021 19:19:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2591BF403
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8873186D7C
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Czi2h0+qX0Sw for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 19:19:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F82F86CC8
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 19:19:36 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id d2so1729303pjs.4
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 11:19:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1NYKRTvAN3DT6BY7g4xrc4D6eus62Tfv/hC6A6biJHY=;
 b=taOQ1Xh44c6uDxD68rFKa8LgEKXYQAODXsSmYV/aSJVE5rfP1mCa+pz7GnjKphq9hK
 STA8ztC4+00VI/6ptbKliLGDF1gnyspACrAkNpERiDfn3FPjCXnANzZV5cZSJRj1WN+x
 8lsrdP2UhmQIXY9uVfUBV5kWP1gMMS/dolK+/nX9Auf2NU9rBzfSXi7GtnPCwYuj0jRx
 912jeGUMzTeFDqDbtOpc+yFtZYJusyzCritY83tGUq0RRgQrtAaflmo8wxf2IoKDYqZf
 N66ZZyyEFiAahZqgx+QPMhZoKrwN5S98XunG8+R7bpMNh5RUNl6aisv4q1zh3+gcBa5r
 zT/Q==
X-Gm-Message-State: AOAM5329GPOdphRhcH1ZBpKep5RiBMhdRVDsnz96l/j95LiL0+iUOwqr
 3OoRiw2q7UEKdv1jZoGQYhm8Peu6ec2kwrEX
X-Google-Smtp-Source: ABdhPJwdbe31MNFtu0tdkA0sU1KZrblEEOUigDFXW1ByxSVgvKys89Od9lGUc/yw0lXBQgORvbYSDg==
X-Received: by 2002:a17:902:8342:b029:e1:1465:4bf0 with SMTP id
 z2-20020a1709028342b02900e114654bf0mr4348963pln.76.1612984775802; 
 Wed, 10 Feb 2021 11:19:35 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.38])
 by smtp.gmail.com with ESMTPSA id v19sm2832369pjg.50.2021.02.10.11.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 11:19:35 -0800 (PST)
Date: Thu, 11 Feb 2021 00:49:30 +0530
From: karthek <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] staging: rtl8723bs: remove obsolete commented out code
Message-ID: <YCQxwl6yfHGeDrAn@karthik-strix-linux.karthek.com>
References: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hey dan,
check this out too
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
