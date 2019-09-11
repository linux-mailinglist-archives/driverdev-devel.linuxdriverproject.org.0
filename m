Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CF5AFEB0
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 16:25:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4237385EAF;
	Wed, 11 Sep 2019 14:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BZbNS1PG82u2; Wed, 11 Sep 2019 14:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDD5B85F35;
	Wed, 11 Sep 2019 14:25:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 712111BF295
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 14:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D74F203EC
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 14:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pY7EhxGJ8CHo for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 14:25:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A767203D0
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 14:25:48 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id 4so10224474pld.10
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 07:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZY0VKmh52iD2w/hscg/E0okbbP/27tzLMXediCN3D/I=;
 b=Y1iXwFcj/tSvkOLjmRn9yK9p2K4x7mTHMx7QqXsjDfpYZCxq9EkCHq9niTIUOSPWZ8
 n/bAzXVNmJimZNLdlRMMCY8rxibHoqa4m/YcaPlkatYsy3Y3DdbJRsmyRpxEovyIiXDC
 qvHpjY7OMWTw/v7bohuTyp2eVJzjHchF/GmOn1Gaz1dD4bL2KZinks6HZ3BSYLKIHhbz
 m2oYhkS0TB53iGMUCu3rmpUw3qxYMZWWXSoxZTRSbi4cvX+i7ZjtuL7MX+loyYDpIhdC
 JwDHIRpY0gApulLqRWqixKUsFal8yjl7c0asNUmLCbKEP6nQ0u4bS53TtHwKYCMIb9EH
 C/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZY0VKmh52iD2w/hscg/E0okbbP/27tzLMXediCN3D/I=;
 b=TzYjhcwkFdWRVZ53Fts+BYOi2W3eDIjjE76p+qIpGcNla4erWflvPWVbv72GDU7aou
 ycIM9ecG6XdJRnPgqyYMA4+OHKM3ki7rTHj9Cjb5lnX1CC6TO0/GuwcH3jCb/1/cg8F5
 bROGLUsLjvTjW0t6MFk4DJvM6UmuhSHO7EqtAHGJGif21S9fOi1ZKDHXHilmPL3+v85t
 ahmmfSjgLNuLizKrmc6mHideUPCkBO2SS2sW+lKl/utYzXd60xIlJMNwZaasbnSh1mB7
 RIJg4eaX40CL+XgOqlyRHX2Bx3oLnjiINZ+DFOTdxSF5g2dxRz+XT1mDigjqCmHK0v4r
 2fHA==
X-Gm-Message-State: APjAAAVtF34jSBamnoWhV7ccEgYMXaE9bNs12/wX8l0vKoDttMZY1grl
 +N9bNWxrPTcuMgP9LQfhev8=
X-Google-Smtp-Source: APXvYqzVagHGJCTsFdlnY89oOT1Wq55J7Q6/Kh15fBHzO92RrfYb3CzN4CGQK4Z4dqWRuIdI97AUjA==
X-Received: by 2002:a17:902:a615:: with SMTP id
 u21mr35951614plq.4.1568211947990; 
 Wed, 11 Sep 2019 07:25:47 -0700 (PDT)
Received: from SARKAR ([1.186.0.68])
 by smtp.gmail.com with ESMTPSA id z21sm23107388pfn.183.2019.09.11.07.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 07:25:47 -0700 (PDT)
Date: Wed, 11 Sep 2019 19:55:43 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911142543.GA9873@SARKAR>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Tobias =?iso-8859-1?Q?B=FCttner?= <tobias.buettner@fau.de>,
 Eric Anholt <eric@anholt.net>, linux-rpi-kernel@lists.infradead.org,
 Dominic Braun <inf.braun@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 11, 2019 at 04:17:25PM +0200, Stefan Wahren wrote:
> Hi Rohit,
> 
> On 11.09.19 15:51, Rohit Sarkar wrote:
> > When the number of bytes to be printed exceeds the limit snprintf
> > returns the number of bytes that would have been printed (if there was
> > no truncation). This might cause issues, hence use scnprintf which
> > returns the actual number of bytes printed to buffer always
> >
> > Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> thanks for your patch. Did you test your change on the Raspberry Pi?

Hey Stefan,
No I haven't done so as I thought this is a generic change?
Will that be necessary? 
I am relatively new to kernel development
Thanks,
Rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
