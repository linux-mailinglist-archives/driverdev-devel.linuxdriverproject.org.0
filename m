Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0538545545A
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Nov 2021 06:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61841402AA;
	Thu, 18 Nov 2021 05:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlwgPh1gNlRQ; Thu, 18 Nov 2021 05:43:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81CDC40163;
	Thu, 18 Nov 2021 05:43:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFACD1BF275
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 05:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDBB340163
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 05:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvJLtbDQFjxM for <devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 05:43:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07A86400C4
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 05:43:04 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id w1so21734126edc.6
 for <devel@driverdev.osuosl.org>; Wed, 17 Nov 2021 21:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=XgrCbNVzylroOlvo2CQOIauHcw5ZFFvNEkLGCnnRkHg=;
 b=UQHtK9L8rhySpeL/U3Jz4rewCk3xxk6ZqjCbRpSIy3PjfGSJyqhgQZPLQjdPHQhkVi
 bvReQ/LOtqoT0tP8lACcHiBMh/7QD6+YXCL52hY+dFDAntXaXV/Yi1uZ35H5mA9JItZ2
 XdlKte3l7r+KB2gglukDHj4rt1sO/8fAfgFCHh2PsAozFUyrsRF4O1mzgxUaBhqbU3/9
 6Ux2L11ZzGImMpUHV5gPEZnhe+KkXz7gaVPqMEzDFc09HYmNk94es2MRSZxptujtxprt
 0dp5Bm2rPjlSe2QWGbZYah2inu0kuzb8fbUeLXwGLIPBabXADn7zzqDS3MsKkj8H31np
 CcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=XgrCbNVzylroOlvo2CQOIauHcw5ZFFvNEkLGCnnRkHg=;
 b=WOzo6r9wsUJrAwgO69eaDLprG9MIQMpHO4OCTdV1qh4tDJ+k0B59QSBy/RtYzoVA+Y
 MMyqamf4bzn+rKM5VUUUDa3HvwdKDqYeoNVY8Mod4esqStqi0MvqjZBSqNNbodZ9tfIW
 DDwVn/1m5WsdAOPsmeiam4pW1vU+bKyWbDUw+OIbTfCOCkgYBKrtS/Tq2duH8zmzvOEO
 IgxK61Yd7chKs0RMbvJq8Rxrqc1Vs2Wr0lLVGggHYDeUxVLeiYxWxCsBuwMM/vqgT9FE
 rJXNoiHsATiU05/pjxRxiaDqQ4nlkVbjjbpeHb4UWu+37MXskMpiCylL5yscwgrRvBwD
 JPSA==
X-Gm-Message-State: AOAM531hfV2JNnFDIQG1rHZ18tpsMfpDrdYQ/13Z7et0ZnBtxtzZA9Jq
 JQLuW/+gIm+7DgnoG3Cd0ZAyCguVZgkgDGHXE5U=
X-Google-Smtp-Source: ABdhPJxas4CJf+sRgIr7mFrK8yVxTJjWtupV1i8SBOG6mp9+qoXaXRpVudHu/9TI7FbgRkU8Zqmz9Z9YZrTifNiykoY=
X-Received: by 2002:a17:906:cd03:: with SMTP id
 oz3mr30313576ejb.252.1637214182720; 
 Wed, 17 Nov 2021 21:43:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:4e8b:0:0:0:0 with HTTP; Wed, 17 Nov 2021 21:43:02
 -0800 (PST)
From: Dr Andrew Cardwell <cardwelldrandrew6@gmail.com>
Date: Wed, 17 Nov 2021 21:43:02 -0800
Message-ID: <CAPrM6Yj-ojZ0tFBSJQgSiKj93C3m2X3tOze+wRT8Ohy97vLLgA@mail.gmail.com>
Subject: hi
To: undisclosed-recipients:;
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
Reply-To: drandrewcardwell101@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  My name is Dr Andrew Cardwell. I'm working as a Marketing
Consultant/Supplier with an animal Farm Company here in
England. I just glanced through your profile and decided to contact you.

I wish to seek your consent for an urgent business dealing with my
company. kindly get back to me for more info. Thank you!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
