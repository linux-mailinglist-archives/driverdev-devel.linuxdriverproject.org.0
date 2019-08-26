Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2913F9C8E8
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 08:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71DD287E1D;
	Mon, 26 Aug 2019 06:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0lPwgmCIcXV; Mon, 26 Aug 2019 06:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D55F587B47;
	Mon, 26 Aug 2019 06:02:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F16041BF44C
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E9086203F6
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VyrK3Ejjrw4B for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 06:01:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4EC75203D3
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 06:01:58 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id u17so9902985pgi.6
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 23:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Zr3vid/Be9jDvSmy10++g3stkcNTsCuHjnJZ89+8CmU=;
 b=PnnnCymd36Rkp087Udk5dXGDI81ria9EJtsL8T2O3jvK0YJjg+QGcHrD3apGcjHOXQ
 HQKNt5ZmlZaLRAozla9mb2Dz3bPNoZhDX6N4OcjNoDh9CL6UCVKLpZrbMDS3e/uNrREN
 3CvEjOD+ZlNR4g6NLwS4CDzWJxGIQHLAb1OQqDoJ11r6vcoD1CQ7Wgmki8JWHfkbiESw
 K2s6CTQ0CalYE2OkovC/mQdjBh7vzCZNJTp4Gkjjg2+XBKPPLStHXOfuOxn4wgGZjkyR
 YZfGXH60HS1dHiU/0InQVOkLjoJ8p/vsIXIrq4uJX+grZ4QMaJLlBOVZih3IG0d1QVJo
 vEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zr3vid/Be9jDvSmy10++g3stkcNTsCuHjnJZ89+8CmU=;
 b=TjUH9QIpzuY4+f5leC6ebFEE5n5qglINCClIYCeozY0aeb4JYS8/+D8qS5EtPpZMcb
 2RaEFSzOTzWDiag72QuH0DMYn5EF9ABup2VpL8Sx/OabTmvgmz3VTMCMwLR+4MxzbIhj
 C4Ts0jqkjAgaBt4u4LDNjf7XG29IDdrn8cBzUjcUPGdQxfw1jngkMcys0Zq9AgM9f+vc
 QnjeaMKA0DHGWr8aCMtqDJRe+rQJHBsVwKf540Pfe25fIKuughu63/75E06RwwgnosTA
 HTKE7QIGgAvVgMYYtzJiN427huWuhbUc35NwnQTsb7PXJtpxn+N+0RZK8G3OdqY0Ff8a
 Krsg==
X-Gm-Message-State: APjAAAVp77ZuuQ0i6v9IKFEIBWaDhyFnxUr9VBUWanmcD9lph35Jw1Ji
 re0TfTE2jok44WmHwbIY1Wy7cg==
X-Google-Smtp-Source: APXvYqy8nv3YahNw2tGFl6N/XoBD6GVoxRLds6wb4xDhj6avX3H2QmuYXu0wY/HUsAOnp+ZhNyRfKA==
X-Received: by 2002:a17:90a:a00d:: with SMTP id
 q13mr18287449pjp.114.1566798959377; 
 Sun, 25 Aug 2019 22:55:59 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id a13sm5740526pfn.104.2019.08.25.22.55.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 22:55:58 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:25:57 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 7/9] staging: greybus: move core include files to
 include/linux/greybus/
Message-ID: <20190826055557.v6zkgyorbpr6bfmk@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-8-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-8-gregkh@linuxfoundation.org>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 Viresh Kumar <vireshk@kernel.org>, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 David Lin <dtwlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> With the goal of moving the core of the greybus code out of staging, the
> include files need to be moved to include/linux/greybus.h and
> include/linux/greybus/
> 
> Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> Cc: Mark Greer <mgreer@animalcreek.com>
> Cc: Viresh Kumar <vireshk@kernel.org>
> Cc: Rui Miguel Silva <rmfrfs@gmail.com>
> Cc: David Lin <dtwlin@gmail.com>
> Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
