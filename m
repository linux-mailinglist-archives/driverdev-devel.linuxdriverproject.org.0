Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942B9E90D4
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 21:35:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B9DA86DA3;
	Tue, 29 Oct 2019 20:35:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rEYr-qliwpwv; Tue, 29 Oct 2019 20:35:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0690C85A58;
	Tue, 29 Oct 2019 20:35:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 233C71BF38D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 20:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D2B584AF9
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 20:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SUXIk+IejW2V for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 20:35:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7164284AF1
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 20:35:20 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id m4so249247qke.9
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 13:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XnSPGwKBRJTkC0yNjsu4dKHcOgEjPbAHTMxUjiGU3KE=;
 b=OgAZMpsfVKWRz6r/dTNV6VDGqp8E7wNDym38IXD6DNNihIGFHUHG7tZPyu3+4CM5cA
 tG8yyVS4YafB8pG+kkWzBvfeF51l48wp70d3DLPKxapPceDBSEVNzSJxpp2THMfHz+0N
 5cwUN0KNDden+Di7h7L0gqnHuB9Yyei3P/o1raUO8TiU+Oa8/k0Fh8W1pvHzcwLb3krc
 CwtdgdhN8HQ4Vv3mUIQ9YIMmGEmFqZgfviOfwKoKwSXk7pH2sexsB04wsH3rVl9KSp0I
 vS2u5fs9hW900/jBBQ0E5e7iQJO6uke2FxXVKgu1hXUcJTa8kT1YJkylh/ytjxnzXCGu
 +4hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XnSPGwKBRJTkC0yNjsu4dKHcOgEjPbAHTMxUjiGU3KE=;
 b=lWOfx/tVT6rmHOjlSt1sTQI0ZwGRjsj7lPcwH2UhDW6sQGz1NLpt2J/E31JHBR26jS
 4Q5WjG3uJQjf4uuU0KtKJio55BqQf9FoUujaqtXQ59xjj3U9mlF5KG5FStQBrIs8ce4M
 WrPJM9DCI3fZl6j6jKvzq+/guvB38joD33ViaYqAefIrcXPlXbH88J5HAZSEICmPIVCa
 RR0NOq/rdsy+0vjsmJ5EWkEa1URzsRtRRWEs6N1UFTc1d687wkzvYZceoEcV4gCwfya+
 GZlyrcIyUBckW6gSnimFkbFXDXfgWnkJhamTxsuCGxj3pu42yjcFjbYmGgMLX7YzUi4q
 EJSg==
X-Gm-Message-State: APjAAAWsAx0GbStJhjQc0ZCToAleMniEyAsQaWIbWrSD9J8ccsN40Ds0
 sTjce3p8LZGsQ7ZHlQH4tbk=
X-Google-Smtp-Source: APXvYqxyDgANO7y0Wv9r4+LLwlqVfOzxJYaDgWPDWn13cYfpIpcRpWFgjMteitt8TkLtD+nekCoH1w==
X-Received: by 2002:a37:e102:: with SMTP id c2mr23424666qkm.269.1572381319464; 
 Tue, 29 Oct 2019 13:35:19 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id d39sm8984574qtc.23.2019.10.29.13.35.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 13:35:18 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:35:13 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: use
 devm_platform_ioremap_resource helper
Message-ID: <20191029203513.GB2188@cristiane-Inspiron-5420>
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
 <CAGngYiXG1JbFcYLfnKDKYac=Ku+KAkOetPa_MkUCt7xXgJA-XA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiXG1JbFcYLfnKDKYac=Ku+KAkOetPa_MkUCt7xXgJA-XA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 LinuxKernelMailingList@cristiane-Inspiron-5420.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 29, 2019 at 01:40:08PM -0400, Sven Van Asbroeck wrote:
> On Sat, Oct 26, 2019 at 7:52 PM Cristiane Naves
> <cristianenavescardoso09@gmail.com> wrote:
> >
> > Use devm_platform_ioremap_resource helper which wraps
> > platform_get_resource() and devm_ioremap_resource() together. Issue
> > found by coccicheck.
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> 
> Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
> Tested-by: Sven Van Asbroeck <TheSven73@gmail.com>
> 
> Greg has already queued this patch, but the link embedded in
> his commit message should point people here.

Thanks, I'll check it out.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
