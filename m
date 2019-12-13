Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E6611EB34
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 20:49:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72F1F88AEE;
	Fri, 13 Dec 2019 19:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wP0+QpDIRImx; Fri, 13 Dec 2019 19:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F183888DC;
	Fri, 13 Dec 2019 19:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39FBE1BF3DB
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 19:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35D65884CE
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 19:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bm+W7CGsUb6l for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 19:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB7F288445
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 19:49:21 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id l136so1774297oig.1
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 11:49:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=puPqkib5wW1ufDZCsroCWU8Z4B1OBGBUiK23E46Afz4=;
 b=J4BjOuSuVkrj3iE7ph76DOoYlyuBcgOML5j7zNmi0lQgzEypd+AHwcGoM7BCYiX/iq
 txrRe70X8QllgkZ1BVcEOKzvwVlvuOPq+7JOLoOPL1xpHd9gciihVAOq3eATTggOKBEi
 uxJv/vH0NPd+B3IYPjajBgGUNhLJZXLyN2Sb+E7ufckEEctOoCwhEDwqiXtwAWY+1kpn
 U2lNP68TF0RwA+QkxP583NoYYC5u4sKXjb/LCMwJ89sTnCM+RW8F5ATvBgVtDUe+fu57
 D+h+Uw/gXoNMKkqIoc2CjoKLgx6N8raksCe8Q7J6NCsssorMPCFqACXJHdjSg3T8OC6w
 ramA==
X-Gm-Message-State: APjAAAVPcNamb6xnqcZI8FxyJMfL+eDW+gkYAhJcCKMIH8NB89cERxfr
 EPcmoXJ9sAM8Ity8W/deJw==
X-Google-Smtp-Source: APXvYqy9I8IPN8N57ObqYrugXpghM9TdPjB6AiccNCqXdBpXYtudSo6lvGrpH79nOj6dlId4HooUgQ==
X-Received: by 2002:a05:6808:b1c:: with SMTP id
 s28mr7980503oij.2.1576266560907; 
 Fri, 13 Dec 2019 11:49:20 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j130sm3633161oia.34.2019.12.13.11.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:49:19 -0800 (PST)
Date: Fri, 13 Dec 2019 13:49:18 -0600
From: Rob Herring <robh@kernel.org>
To: shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 02/10] clk: clock-wizard: Move the clockwizard to clk
Message-ID: <20191213194918.GA13693@bogus>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <610b14b71d4c3c4c28cbedc340f6a92f15e25241.1574922435.git.shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <610b14b71d4c3c4c28cbedc340f6a92f15e25241.1574922435.git.shubhrajyoti.datta@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 28, 2019 at 12:06:09PM +0530, shubhrajyoti.datta@gmail.com wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Move the clocking wizard driver from staging to clk.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
>  drivers/clk/Kconfig                 |   6 +
>  drivers/clk/Makefile                |   1 +
>  drivers/clk/clk-xlnx-clock-wizard.c | 335 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 342 insertions(+)
>  create mode 100644 drivers/clk/clk-xlnx-clock-wizard.c

I don't see anything moved here.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
