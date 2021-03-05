Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3314232F074
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 17:58:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D85243309;
	Fri,  5 Mar 2021 16:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlxcsUVOTv-R; Fri,  5 Mar 2021 16:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6568943306;
	Fri,  5 Mar 2021 16:58:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEA7B1BF29A
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 16:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4DD9605F4
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 16:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o92w2TSQZwLb for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 16:58:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29570605F2
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 16:58:29 +0000 (UTC)
Received: by mail-il1-x136.google.com with SMTP id g9so2618908ilc.3
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 08:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4vO8xcvnT8HVccwtWoxEbb04shz3gXURd6cw0ZkJ788=;
 b=hQbCGTQacfSXl3aN6RY3VC17t4MdG4TXaf0bczaSMO22JPEn9FzTGlpKg/zW69AQ5C
 K0FvTMq4wqI1mlZTBD7VJL7cCAMwpsWIRc21mPo3nianED1W5dugh4H5aJnAOLK94LA8
 44nu+yVCxgKtkBV2MzjnXvWr0w6RTGhe+dN5jW9uFXoeTr8fLwiJeTQ7Ig6n3dejjQ0K
 yLFoPbOo29MewmEKmGcJzoiO4/SKcCD83ACY/MsXypaD6whmvciL6nSnf6QClIdMu/Za
 njsmnwqgvtmYpi9imPe3NzlLIpDfaByFYp5/9CIiSHjYiyKQDQwNmtDc9yP+ootROufV
 8kfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4vO8xcvnT8HVccwtWoxEbb04shz3gXURd6cw0ZkJ788=;
 b=ishbMY773Zhb2vze89RgxiCNeAgbHDTtLvHm3BQiuv9Gb/JnpxNnFa71o8CZh7u1Gq
 YSPO/ApD4RTn9RGJ6AaJbxOelNOpBTX4EcDtoTNNFEMcjoDtM4E7MT/sT5VAZHvssF1o
 CjeH54RCOHoSwY0ofUapR+ysw+hDojyucn9kt+UPj88dnHvIpd0nwRhM1DerWHSaDNWL
 xslH1Jw3lp+ofg1E+YaIr6UaHFLfB5c65mzLYg+BShRbb0RMSKFOMHrpbp2wwdARZOKn
 nE9GIR8k7r96EehSPlZ1uByyBvhLCPFMGXj8n6kHVm0gpqyxVKrO9X9gIa/WnUuK0tBS
 b2HA==
X-Gm-Message-State: AOAM530MVdCSSvbLY+vZPBQ1184rgUAqluy36dTzGiBQd6rnRSqvNCPB
 Ix5cACsLCqQDZUT8Mn8Ro2KC+CQUZkebqlLZEQw=
X-Google-Smtp-Source: ABdhPJx7YKHGgBlYVqsKix+XPludpapU2KTmL2rf1P3Jsg8009eu+E/Ed7Vdr2kjtcDCX+yYfsAdWX8R87INj+HVato=
X-Received: by 2002:a92:c5cf:: with SMTP id s15mr9624359ilt.149.1614963508365; 
 Fri, 05 Mar 2021 08:58:28 -0800 (PST)
MIME-Version: 1.0
References: <YEHymwsnHewzoam7@mwanda>
In-Reply-To: <YEHymwsnHewzoam7@mwanda>
From: Edmundo Carmona Antoranz <eantoranz@gmail.com>
Date: Fri, 5 Mar 2021 10:58:17 -0600
Message-ID: <CAOc6etYqu_SJPjZtZdp4xDX=MVB0XY67tJ-EYoDYWuLfEyjnrw@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: prevent ->ssid overflow in
 rtw_wx_set_scan()
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 5, 2021 at 2:59 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> -                                       if (sec_len > 0 && sec_len <= len) {
> +                                       if (sec_len > 0 &&
> +                                           sec_len <= len &&
> +                                           sec_len <= 32) {

I wonder if this could be reduced to (sec_len > 0 && sec_len <=
min(len, 32)) from a stylistic POV?

First attempt at something kernel related so I know there's plenty of
things to learn (including patterns for problems like this and
etiquette).

BR
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
