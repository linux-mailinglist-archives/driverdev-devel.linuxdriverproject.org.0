Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 970A23282A5
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 16:38:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 298396F610;
	Mon,  1 Mar 2021 15:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DmEPRUhCQIUl; Mon,  1 Mar 2021 15:37:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80AC9605CB;
	Mon,  1 Mar 2021 15:37:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BFD31BF39E
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AF8C4F2AA
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5MPoXwbTUyzu for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 15:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 778F14F2A1
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 15:37:46 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id n4so16644549wrx.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 07:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2mjETDS/R3AcrHDxH+eBHTmfWCAT1YYDng8uSVTe0DQ=;
 b=ZijXwVTP9y+09zH0zD9ZoS6JDGqj/lSjfXbcaqFGfzV9rSL6eZVDHZAW0kSlgtHg15
 zwQQgWIduKj22O5riA3/wQKzgjWbCcsUTgJrGgdFo4tHxpYgKSErmSv7Bl3QFKUK1mNJ
 yeevnPS0LmK/KCLrwuWm8JQQvVkkoN68zBP8yCEtzAY/avhw4l+9BZjmF+1gH3otdnip
 uqovBZ4TOm4bb00bOgcxPTkYyd0DU/3PXoa34WBSE6jK72v0CO2OFhYe3IRbPaZmN4vI
 Nhscr25Rfao5pxLgOBHh9AFUPv9oUNvWJI+/5wp7+rv2bcXH/Jjg7LOy18A2Lah7zHmS
 vPHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2mjETDS/R3AcrHDxH+eBHTmfWCAT1YYDng8uSVTe0DQ=;
 b=eOxxEiJdzyg9AWpumqyRwrE1nq8X7UCAHL4RCxQtGKN5lRyPd1IgHvCxh6sIb5LcI5
 GejiHAsonFXNqqaUIjAmIA1o57oC7B6YlQCVR/X23rp21SpERi1WQca5oyz4LqBBjcTA
 r6IHX5sjrBVUdmjUvcCR2v3r6d6Cgks7gXMe4P7UdTzid0cmaS1f+o1DlHksOKE+972F
 T0Jgvdnq6W18DT4MmoHfD+8PVF+3UYeXb74kPJq7+ZmwH8Quy6QnGkomEvOoCLkd9rRI
 vP88fLYj+b1SEWEVaC0GpmEoqqdhqFe2C4STcFMzhE3BUBD+b+YPOMl/CigdxFFNFcYP
 dAXQ==
X-Gm-Message-State: AOAM532u76JXwiHRAxzltUxlw8Py2e59wxHEZ1hMYbZOJCgf4niiaYEt
 UHZMvNHavAJoyJiWYh4glb0=
X-Google-Smtp-Source: ABdhPJwVOsqMcVd+MawWtsgwbNmlYQ/GlTYMnDc8ODM0H4y4vaQ4CERjuc4s6tjZRpm4/l1Xlb2hrw==
X-Received: by 2002:a5d:424c:: with SMTP id s12mr15556026wrr.161.1614613064575; 
 Mon, 01 Mar 2021 07:37:44 -0800 (PST)
Received: from ubuntudesktop (205.158.32.217.dyn.plus.net. [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id n1sm28452749wrx.45.2021.03.01.07.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 07:37:44 -0800 (PST)
Date: Mon, 1 Mar 2021 15:37:42 +0000
From: Lee <leegib@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Message-ID: <20210301153742.GA427438@ubuntudesktop>
References: <20210226114829.316980-1-leegib@gmail.com>
 <20210226134333.GA2087@kadam> <20210226140526.GG2222@kadam>
 <20210301132535.GR2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301132535.GR2087@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>




> This check worked out pretty well.  It's probably 50% bugs?  Unfiltered
> results below.  The trick of warning for "if (ststr(member, "->ssid")) "
> and the memcpy length couldn't be verified turned out to be the best.

That list looks great. I checked out 2 of those listed at random and 
they look like valid bugs to me.

> But there are quite a few real bugs as well.  If anyone wants to fix any
> of these just claim a bug, and I won't send a patch for that warning.
> :)  Lee, I think you mentioned that you had found a related buffer
> overflow fix?  Did the check find it?


I think I found 2 in these files:

drivers/staging/rtl8712/rtl871x_cmd.c    
drivers/staging/wfx/hif_tx.c

Regards,
Lee

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
