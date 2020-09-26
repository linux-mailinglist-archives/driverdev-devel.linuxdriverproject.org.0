Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E66F9279AD1
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 18:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A02AA85FA1;
	Sat, 26 Sep 2020 16:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fckUzQZ3EUqB; Sat, 26 Sep 2020 16:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 852DC85E79;
	Sat, 26 Sep 2020 16:29:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C7021BF3DB
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 16:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 367EC20101
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 16:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34f8C-hFP6Oj for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 16:29:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 397682002C
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 16:29:28 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id t7so1117666pjd.3
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 09:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ReZsLvHBneH04N8Loq9YJ9S6MWNTP72CPq7StQtiUsk=;
 b=flBuDFjylqO4PcpY2bHDwc92sMi/0GbduSVdkuQNfd88bmVK6DfigGBFUH2QBccrk2
 385Yim03CnMzoMGY7oZWhtOHqZer6SqZzNEY4WhKUkcI+yagFY8N4xPq4loZU+jTLeex
 HDG74TDBdazjHstF7s1FoKEAo65tC4nQ0BeU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ReZsLvHBneH04N8Loq9YJ9S6MWNTP72CPq7StQtiUsk=;
 b=eUD4CvcWaE07AbbZLL1MdVS1GbseS04YcPLxwP2uWVz2dbzdhVs/IPI3jT1Hy2XKK1
 hNBe0WNLqJVR4oo5pmKq1agW3uQMgpkg9dR9j+7CMEBPjS6tZ/SjS0SQyexoOuefgQT1
 VQcuBxrglCBWSqRi1+W/GgfiWpcvbCcBSE7MZF2gpNzRmmqUut1+wN3FLIZxOmbY5mji
 ijzx8HRuqn7J4EPSLCVhkap3qqStTs/VTVmGs4oQ59OrJAjXT1AHRhDAQtwCnssRVKs0
 bZ1FlVUHZNgLFS60zyb4QNbzM+sOBWJOanjgBhVVAHzVrm/2AHc+5oCVMPaKQEOy6nLp
 TSMg==
X-Gm-Message-State: AOAM5315LG6xcUvTZdmEFXnUsjarAI7v1LSWMAa7p1VzlbtFmMHwDk7p
 FIoCoxwiBaIq1yc2FbX+dTaxNw==
X-Google-Smtp-Source: ABdhPJwd4IF1Fz4/85gg89M2RFijczjSa7iLtSh9kaFyp2cYD7D9Izg0ei9xFdzpxZhcWY/9odrHmw==
X-Received: by 2002:a17:902:b7c8:b029:d0:cbe1:e7b2 with SMTP id
 v8-20020a170902b7c8b02900d0cbe1e7b2mr4320915plz.35.1601137767826; 
 Sat, 26 Sep 2020 09:29:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q16sm6358555pfj.117.2020.09.26.09.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 09:29:27 -0700 (PDT)
Date: Sat, 26 Sep 2020 09:29:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
Message-ID: <202009260923.9A2606CFF6@keescook>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1601073127.git.skhan@linuxfoundation.org>
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

On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>    7. Verified that the test module compiles in kunit env. and test
>       module can be loaded to run the test.

I meant write it using KUnit interfaces (e.g. KUNIT_EXPECT*(),
kunit_test_suite(), etc):
https://www.kernel.org/doc/html/latest/dev-tools/kunit/

Though I see the docs are still not updated[1] to reflect the Kconfig
(CONFIG_foo_KUNIT_TEST) and file naming conventions (foo_kunit.c).

-Kees

[1] https://lore.kernel.org/lkml/20200911042404.3598910-1-davidgow@google.com/

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
