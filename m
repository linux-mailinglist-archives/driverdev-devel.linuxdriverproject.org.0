Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C940E2564F
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 19:05:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA88387BFE;
	Tue, 21 May 2019 17:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xCN93W02eJ3Q; Tue, 21 May 2019 17:05:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEF8687BB6;
	Tue, 21 May 2019 17:05:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F38C61BF57F
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 17:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED45E84693
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 17:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vKc4Dbu9Euj7 for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 17:05:27 +0000 (UTC)
X-Greylist: delayed 00:08:12 by SQLgrey-1.7.6
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9429A84542
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 17:05:27 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id x64so3732424wmb.5
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 10:05:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XTdOu4nTOIaGJrQvdIq30fU33+PO+XLG2cxp+DkWGwM=;
 b=uGbGsf3Io5yeO9/gIj6yY19PxoeAnuCeyw3XDbGqX6wuizj3W0Fj7yPMEaR45QE1/O
 3R7DLxwHQaIn9JTe5hWuUiWx5BjlGtpDVgW8tE7yWFFSwc4XjcRdtpwhAx3qZITQXuMY
 ZXbzRbhvSjfyW8hnSSaJdPn8U0gbIh37BfIyQuTjATAohhkK4NhHAHZNkDb64Xe1XOVy
 EmdtdJSqncmppwG2L95nF5sQs5xtYiYNSP3R7pBJ+Gf58of+Pcw887SPrqdSKNiLNXgH
 AvxhPMibNMakDzpVga47ebEtVj0lyj+mEav6pc86Q4jbQiNHS3c1caZksNmkKsmTyG+v
 13Jw==
X-Gm-Message-State: APjAAAUW17KdDJMi6pNHu31OsJGuEkkoRmwLuAa7ikxyuU8LUX/x44jp
 SgMv4IebhBudA6J29kc7SwpKTTm6YtU=
X-Google-Smtp-Source: APXvYqye+AWXb5HCFzKAmuUc2hl5iceM97h0XJnX91W66r4leZp33RloUJinRkTaK/kyq8GRl79IjQ==
X-Received: by 2002:a1c:7d8e:: with SMTP id y136mr4020134wmc.129.1558457834031; 
 Tue, 21 May 2019 09:57:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:1c0c:6c86:46e0:a7ad:5246:f04d])
 by smtp.gmail.com with ESMTPSA id g11sm6944142wrq.89.2019.05.21.09.57.12
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:57:13 -0700 (PDT)
Subject: Re: staging: Add rtl8723bs sdio wifi driver
To: Colin Ian King <colin.king@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <9c766350-db9b-7a88-5655-54d03c8d2703@canonical.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <4ef8b4e0-9e70-d800-2a68-cb539995d41f@redhat.com>
Date: Tue, 21 May 2019 18:57:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9c766350-db9b-7a88-5655-54d03c8d2703@canonical.com>
Content-Language: en-US
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 5/21/19 3:49 PM, Colin Ian King wrote:
> Hi,
> 
> static analysis with Coverity has detected an issues in the rtl8723bs
> wifi driver:
> 
> File: drivers/staging/rtl8723bs/os_dep/ioctl_linux.c in function
> rtw_dbg_port():
> 
> CID 18480: Operands don't affect result (CONSTANT_EXPRESSION_RESULT)
> dead_error_condition: The condition (extra_arg & 7U) > 7U cannot be true.
> 
>          if ((extra_arg & 0x07) > 0x07)
>                  padapter->driver_ampdu_spacing = 0xFF;
>          else
>                  padapter->driver_ampdu_spacing = extra_arg;
> 
> 
> I'm not sure if the mask is (in)correct or the value it is being
> compared to 0x07 is (in)correct (or both!)

Hmm, after looking at the rest of the code, it is clear that valid
values for driver_ampdu_spacing or 0 - 7, otherwise it should
be set to 0xff which means use the driver default.

I will send a patch fixing this.

Regards,

Hans

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
