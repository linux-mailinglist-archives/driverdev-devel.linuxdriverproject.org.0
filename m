Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC90C46A5
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 06:34:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D156C8541F;
	Wed,  2 Oct 2019 04:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w33k66sAIGFS; Wed,  2 Oct 2019 04:34:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F20E81E93;
	Wed,  2 Oct 2019 04:34:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9716E1BF9BA
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 04:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51B0E87CDD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 04:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bC9tdC4YlTK9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 04:33:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E3F287D73
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 04:33:56 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q10so9667096pfl.0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 01 Oct 2019 21:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7zrXIZYGjTrtU4f+WjLYyUPJO1iqNXTIiiXEq9ds6Cc=;
 b=kfZBEQBrC6/wXOF+2XCCBxXb5nyMG+gE2KAdPYJjxOwGFumrH3sfn2u9VT16DdxWqP
 qUgASbnPOpN8cqSpwfx5/M9FwLDGFgAU2V0VxKM6YhWR2N/9PPoLoXGypX2StJGPu9H8
 QnLXK65ldlxVua7mmPLDCmxnSEl1AHCjW9FXW8sZaxZ4GH8UgSWEZ217G4LCyIDU555f
 UbsOOjNEoEyBz958cE2b1O8kAYqyYviJiYiJidR74YTCK3NkQ1ahM/rlKOew25lTvumQ
 iqa/VGPfhnAqdONBBdqVCgpgmy4wYFa94XLNNWRTTULPDnvVesOK3ydZf55CmlIyd1iF
 WL0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7zrXIZYGjTrtU4f+WjLYyUPJO1iqNXTIiiXEq9ds6Cc=;
 b=snYEj00yQCG8USUBwHLdkstjvtcPABQeiUTjtfsAgugY2URLBYDEdmUdYPqcSrf0Uq
 mt640C57nUrJ3hWsy8EFIdUy3MBaH6oQToGunW8pDelmwXNgo6pd2Snx1eLSXQqhO36N
 ifiCpXuhcpzMAwsc9yVRhekF232g3o96n39iwZ9iEYa8DGpDad6Cm0EFr5Rc5XtN50I0
 TJGx6c0O8iuPkt9NDlzfbV5axRmOsElz4ppBaxaFB5pRFuzXvDRAGFGjvuVCcuS9wvky
 rGJvx85ryAc7GHtmiar5PiiUs+z3/WI43NYJfyWzzR6DavMxy2rRbFUxd4AltnbjHVfu
 5TmQ==
X-Gm-Message-State: APjAAAUW2OrUZrSAPF6KdX3uNXevdBXTdD2Y44mMZzeZ38tOG4d0nuTP
 sZ4EBBJ57cf7fnm9vLOGT48=
X-Google-Smtp-Source: APXvYqxsijPUcshf5YAeDKiRoQKRRKjMrIq5p4pUu0Y5QfW/SjGCbbKRgntecIEtbJuCbrmWN7tE8w==
X-Received: by 2002:a63:5007:: with SMTP id e7mr1579879pgb.2.1569990836026;
 Tue, 01 Oct 2019 21:33:56 -0700 (PDT)
Received: from SARKAR ([1.186.12.91])
 by smtp.gmail.com with ESMTPSA id n4sm4578179pga.71.2019.10.01.21.33.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 21:33:55 -0700 (PDT)
Date: Wed, 2 Oct 2019 10:03:51 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191002043350.GB11819@SARKAR>
References: <20190910184931.GA8228@SARKAR> <20191001084514.GJ27389@kadam>
 <20191001173926.GA11819@SARKAR> <20191001185852.GJ22609@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001185852.GJ22609@kadam>
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
Cc: larry.finger@lwfiner.net, gregkh@linuxfoundation.org,
 driverdev-devel@linuxdriverproject.org, florian.c.schilhabel@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 01, 2019 at 10:00:56PM +0300, Dan Carpenter wrote:
> 
> No.  scnprintf() returns the number of characters *not counting the
> NUL terminator*.  So it can be a maximum of MAX_WPA_IE_LEN - 1.
> 
> regards,
> dan carpenter

TIL :)
Would the better approach be to just remove the loop or break when n ==
MAX_WPA_IE_LEN - 1.

regards,
rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
