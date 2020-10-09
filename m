Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAB528907F
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 20:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3774A87894;
	Fri,  9 Oct 2020 18:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lyyr9D93OnvX; Fri,  9 Oct 2020 18:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55BC686EB9;
	Fri,  9 Oct 2020 18:03:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EF1D1BF576
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 18:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68F0B86DA1
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 18:03:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x28zFn8aozID for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 18:03:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E559686D9E
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 18:03:46 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id x22so7490669pfo.12
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 11:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gAAMCepqobw6tAv0NKnu0DRBRmHRA3EpSxx1Y4BJ/ao=;
 b=iiTNuyzuEmUSEE/Hru+Y3B6KbrrOPsp8fAtOvbJ8mesODX2DzYvlOxWG0bMEGSA3ao
 YcgG/aEDxmOxo1Agatg0s3CfdWn6fgaz30eymOcckXmvkDOG8T/5pnArNF8z9q7q1ch8
 T7c+WYhFXX6wq88srZeVbX0XazKryeUuBjlrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gAAMCepqobw6tAv0NKnu0DRBRmHRA3EpSxx1Y4BJ/ao=;
 b=frPq1AAZibj15i9QfDOtCuAYJ62I5M88TeE/YCvZvEqxqJ240j9Q3HCjTHnhXlTsAG
 lPnPREkSRMGxY1H9tKP7McZGq6UlaIXq9By2EZsJ/BVY146RC1F4u66nUX3A3yJ57b20
 AYgfKA7p9RnWk1iKl6T5DcmgNj1/+kYNVzA4ZTJSF+iQL5NFm5mbKTNdIpmDyBNDF4iY
 8FU1wfHG7W3XVXGs8AkaHX003tX2teLrsXxmd/mjP5NXjvAa43PYIzVB08Z17DvW7c1T
 2Slnuql6+R0x3g/y23JIxNZ+8icNcnsjpwDR60YA1VwKjipO8yAt3eAk5e/3fTJb6KYl
 /LKw==
X-Gm-Message-State: AOAM532OWWNd3FFGDtNVsfGUl89c+RnQ2hcgzNdQKNhUgWmK+Trkz5xn
 ovfKeTP9wzu7V1kcK4IjL4bX8w==
X-Google-Smtp-Source: ABdhPJysT12No1lDoGSMw/H2+Oq/8cLgq6b3+eY2EubBXnsEpPWixk4MotSHSqGPQyU35R7/5GB0Cg==
X-Received: by 2002:a17:90a:7f8b:: with SMTP id
 m11mr5894826pjl.121.1602266626529; 
 Fri, 09 Oct 2020 11:03:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d128sm11815809pfd.94.2020.10.09.11.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 11:03:45 -0700 (PDT)
Date: Fri, 9 Oct 2020 11:03:44 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
Message-ID: <202010091103.5E435B42@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1602209970.git.skhan@linuxfoundation.org>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 rric@kernel.org, shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org,
 corbet@lwn.net, surenb@google.com, linux-doc@vger.kernel.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, tkjos@android.com, arnd@arndb.de,
 bp@alien8.de, openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 maco@android.com, christian@brauner.io, linux-edac@vger.kernel.org,
 tony.luck@intel.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 arve@android.com, james.morse@arm.com, hridya@google.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
> Note: Would like to get this into Linux 5.10-rc1 so we can continue
> updating drivers that can be updated to use this API. If this all looks
> good, Kees, would you like to take this through your tree or would you
> like to take this through mine.

I'd mentioned this in the v2, but yes, please take via your trees. :)

I'm glad to see this landing!

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
