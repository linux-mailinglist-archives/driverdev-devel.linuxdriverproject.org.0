Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9477B2D8EB3
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:26:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 557CA85ABE;
	Sun, 13 Dec 2020 16:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Q0QK2fAOctI; Sun, 13 Dec 2020 16:26:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C674C85C54;
	Sun, 13 Dec 2020 16:26:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B79871BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B437286DDB
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 83edH2vwvWmC for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:26:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F300786DD6
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:26:38 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id u19so14626337edx.2
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=MHMay/24ew2u/NmtErrJSYAjPHicatfG3PUl5wqVLEM=;
 b=EAnp6GwmxB7x2Ptvfua1LSRWWjkLtEBb8E/VMyzTueXXhrfRUZC1EquuvK0HORKiCa
 mvvWDguNHM3V//0BKsZhKHukC0d52vymKynYelmAOiTU9GsNnIQ0gvBSqKwBKrGAH+o2
 TMtH0j12iBjQniEcn5cOqEPC7NWwLCeFQoCpexOZtmW5GVv4kv9Gj4qgb77ODnaukkuf
 BWTg/sAaoBUvz0di7xxpuJyRv4cVGmAXYms1w0TVC5OD47Uk7ZDlWka8T9bIBYcpMm9T
 9QCEb0bCdZ4tgJTDuxvLeAe/anROZIfZlUkMPiQu/tlLgXxQQatqn5gtJ4HXNn6WVPQd
 Z2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=MHMay/24ew2u/NmtErrJSYAjPHicatfG3PUl5wqVLEM=;
 b=myzdTerUrgYG9nLJp32CvDRhGF1+ra2K43M/8Qe5dB2DuvaQZ7UbAiyUCxX/azKlmo
 PF5bg4S1HJIbhsJ71eS9j3kFANJc+Rol4td4HmTQ+Up+ZD3m+UIpqtdl6JSm4/rt73kV
 apIK1L/H/vIIzKutzxWyrGQkizWjx9Jg8gleO+oolJjyMj81Qn2uRIxfc2RocmeRrMeI
 xQ6kT5xsfHIabzkiAZFO6RiFI/Jh/crD8/LyO2pUovA5k7BoQ954s/uesB5vzomllO+y
 kRoAG7dZ0FGmiusVYFHit7PEqWi/uewflkRmtOw8c4jdXs3QOlCQ0Z19MHsaqgJ9EPG1
 +MdQ==
X-Gm-Message-State: AOAM530gfmH1xTEbtHrpmHpWzg1eK88W9Ss5UhDNWp20mpiJxNg4L012
 Svj3nLuUBz4NY7XWj8D81tGqv9JIN30=
X-Google-Smtp-Source: ABdhPJxnwEhJEtFrGxdRiRTVq8yuH6SWzCbvjDYbJZQB01wc1pP1MmvkRzM423yp6HSjcK7Kyx/Wbg==
X-Received: by 2002:a50:c406:: with SMTP id v6mr22102478edf.367.1607876797478; 
 Sun, 13 Dec 2020 08:26:37 -0800 (PST)
Received: from [109.186.216.164] (109-186-216-164.bb.netvision.net.il.
 [109.186.216.164])
 by smtp.gmail.com with ESMTPSA id qu21sm11767393ejb.95.2020.12.13.08.26.36
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Sun, 13 Dec 2020 08:26:36 -0800 (PST)
Message-ID: <5FD640AE.4040201@gmail.com>
Date: Sun, 13 Dec 2020 18:26:22 +0200
From: Eli Billauer <eli.billauer@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
 rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: Add xillyusb driver (Xillybus variant for USB)
References: <20201213115933.58823-1-eli.billauer@gmail.com>
 <X9YoGnkD7fjPdr4x@kroah.com>
In-Reply-To: <X9YoGnkD7fjPdr4x@kroah.com>
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
Cc: devel@driverdev.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Greg,

There's no TODO file because it would have been empty: There is nothing 
to do, as far as I know.

I submitted this to staging because I failed to push the Xillybus driver 
to non-staging back in 2013. In the end, the way in was through staging 
+ a review that got it out a year later or so. So I expected the same story.

I'll submit a patch for this driver to char/xillybus/ soon.

Thanks,
    Eli

On 13/12/20 16:41, Greg KH wrote:
> Why add this driver to staging?  All drivers in staging need a TODO file
> that lists what is needed to be done to it in order to get it out of
> staging.  Why not just submit it to the "real" part of the kernel?
>
> thanks,
>
> greg k-h
>
>    

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
