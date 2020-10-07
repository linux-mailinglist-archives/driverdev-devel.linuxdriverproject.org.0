Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E92F2866C8
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Oct 2020 20:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 783E2272DE;
	Wed,  7 Oct 2020 18:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKVcnmMW9m0s; Wed,  7 Oct 2020 18:18:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 34E742725F;
	Wed,  7 Oct 2020 18:18:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B658C1BF46D
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 18:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD4B9230F3
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 18:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xf9YZyYWGT1J for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 18:18:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 68CED27233
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 18:18:28 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id b19so1425118pld.0
 for <devel@driverdev.osuosl.org>; Wed, 07 Oct 2020 11:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LpH0udS+5sZxGKcOCcpSntLVJYC4Z+JELN0EkMDhhP4=;
 b=OLQyg643Twbke4GIl3mcjZAcEQELjp0D7Figkfqp8u/1xiAfvy4hg1AIVPl3jc92Ar
 xzhjjf53uaKXnyuLJlS9ITdMevBOGY6FPvbOZDBplMgu9pUDRP31IbUeUCGIS9Madsaw
 7PYjXCIllM9+cZEgBGlnaldCEzsbb5AFb8WsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LpH0udS+5sZxGKcOCcpSntLVJYC4Z+JELN0EkMDhhP4=;
 b=IZTw3L3IlunpY1iXI/RAntPHATx9fxL2+edAV4kr/ahZN2vQiacEdmTdIwVqqJpi2S
 DgtpAb6XweDSEVNykT8xvCmlQfV4sUyeQiNt+2oNJP3yn1z4Y3yRnj491tu+V9SLBh4G
 tsrNe7t5DRiCvf7o1jRMoVUd+yeLv4V8+2dRdsAyTf0BxRm5aYAcrFAtdKN3eN0KwNi1
 TWXJUKKX74YBW59WFHSiVhOy4mnejINFvVP5d+nzkqzDsfRYqhTu5JYlM9d/dSwm2gTV
 5UsHwWQmSChYQmfKThE9/mO6tYz2exy2NI0Jz3mGr+qx0Eegr4pwGHuRjxlsj25qjgqp
 Yg1A==
X-Gm-Message-State: AOAM532mwMOqII1fi/qy9Vls4gY9sRqnk67n0f8eo6h4sK5lFafI8bpt
 cywTyEfKiazq6GnANIk0yRzhHQ==
X-Google-Smtp-Source: ABdhPJz2uwZluN07GtoySh0k6r1mG+ey8lV37M+Wn8f8i+zxmh4WShlTkbIPDzxTcBzHnSQmwk5uKA==
X-Received: by 2002:a17:902:bd83:b029:d3:b3bc:9e7c with SMTP id
 q3-20020a170902bd83b02900d3b3bc9e7cmr3912824pls.14.1602094707996; 
 Wed, 07 Oct 2020 11:18:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c15sm4048937pfb.171.2020.10.07.11.18.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Oct 2020 11:18:27 -0700 (PDT)
Date: Wed, 7 Oct 2020 11:18:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v2 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic32
Message-ID: <202010071118.2ADCE5D@keescook>
References: <cover.1602011710.git.skhan@linuxfoundation.org>
 <63482420f221c3483f6526bfc12fc99fe30a567d.1602011710.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63482420f221c3483f6526bfc12fc99fe30a567d.1602011710.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, surenb@google.com, hridya@google.com,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 06, 2020 at 02:44:38PM -0600, Shuah Khan wrote:
> counter_atomic* is introduced to be used when a variable is used as
> a simple counter and doesn't guard object lifetimes. This clearly
> differentiates atomic_t usages that guard object lifetimes.
> 
> counter_atomic* variables will wrap around to 0 when it overflows and
> should not be used to guard resource lifetimes, device usage and
> open counts that control state changes, and pm states.
> 
> stats tracks per-process binder statistics. Unsure if there is a chance
> of this overflowing, other than stats getting reset to 0. Convert it to
> use counter_atomic.
> 
> binder_transaction_log:cur is used to keep track of the current log entry
> location. Overflow is handled in the code. Since it is used as a
> counter, convert it to use counter_atomic32.
> 
> This conversion doesn't change the overflow wrap around behavior.
> 
> Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>

Yup, seems to be stats-only.

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
