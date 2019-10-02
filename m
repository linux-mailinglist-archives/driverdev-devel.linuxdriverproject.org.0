Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CF0C8800
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 14:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF93A86BB9;
	Wed,  2 Oct 2019 12:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIYqwtiGuqNr; Wed,  2 Oct 2019 12:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5CA984D3B;
	Wed,  2 Oct 2019 12:11:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECDF61BF322
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:11:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E4B7620492
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:11:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QnNIlK69z+Wt
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:11:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C39FB2044B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 12:11:03 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d22so6985224pls.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 02 Oct 2019 05:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SSvZ7jFzFoy3Kpu62K/Bh4ls6X8qI6+bqEIm+0rIHrw=;
 b=IeuT/+PeCFtYyhClEAexg3mRTDQYhn24MAS0smKDBC9h2EacXUe3bYLZ7Bm/KGuH1Z
 bKMRp0iWVWCSehBubQ25EoCciEgm5ooPMNF9jJeJdk+8yXNjKgJYNUxl+hkRiOBTQUs4
 vJCbDhnc1GbvUzQlpGOcKfEkVAHOXp1yX7vwXuFGMr/PhiskkuFyLaW58jlVpP+OX5wc
 VSqq13asGl3waPRqO+Pl+K7Shii4Bq81STC01cDvU+dAu5vjlp+mzmk8chi06QN90yRd
 meXwn67AgDmV412cixFDlFo+yCV3e0D5gcsnqdJUkCTBgWwGYvCr1sBMWmClqv6um9Xz
 bQog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SSvZ7jFzFoy3Kpu62K/Bh4ls6X8qI6+bqEIm+0rIHrw=;
 b=EUaY+258L2Y3QwVmXyb8+n7pKF9PgwJe/iK7kjthe+AYb7JSyG3l+r2oGkLBbflCre
 ZiOnQbssapcswegZvqkIXcP1Q/V1d1Ekv040scHWBfbP4VPnpyZcpGCrXElp7Fn2Z2H8
 XdveVO9WDFWvSaXhNTbe0yhrTQrUqs9WutbAJSqStkFNjbrObq4ymZOgGqll8e75wXFe
 SiOSZCCoC5d8VKzXjLPVvAeIo7O07gLv1HyGnYPgXnLB43uciRtLzNl5JycP/4EDZkWR
 ToJkqfuMnclIXSHoQJJ83qPVo9BjTUXnp3auk5YCtjlyR0zUE8oWtef4CicNcjAaU27v
 Vasw==
X-Gm-Message-State: APjAAAXx+QH7zNiXxrRObZM0/OhG+qj/wXSQAuCcP6THD0oFZ9pKo4Z4
 i39sV4rhb3zSv0ss2Iv309c=
X-Google-Smtp-Source: APXvYqyF9ZPNvyGXsogjV+9D0s23rMtRok+PKmqD0ctgzszftLIGmHsXph85Gx/mlSU+FsbL3b/oLA==
X-Received: by 2002:a17:902:6bc5:: with SMTP id
 m5mr3473299plt.282.1570018263261; 
 Wed, 02 Oct 2019 05:11:03 -0700 (PDT)
Received: from SARKAR ([1.186.12.91])
 by smtp.gmail.com with ESMTPSA id 207sm31615443pfu.129.2019.10.02.05.11.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 05:11:02 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:40:57 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191002121057.GC5812@SARKAR>
References: <20190910184931.GA8228@SARKAR> <20191001084514.GJ27389@kadam>
 <20191001173926.GA11819@SARKAR> <20191001185852.GJ22609@kadam>
 <20191002043350.GB11819@SARKAR> <20191002105722.GL22609@kadam>
 <20191002114214.GA5812@SARKAR> <20191002120622.GM22609@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002120622.GM22609@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: larry.finger@lwfiner.net, gregkh@linuxfoundation.org,
 driverdev-devel@linuxdriverproject.org, florian.c.schilhabel@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 03:06:22PM +0300, Dan Carpenter wrote:
> You could remove it, but I feel like it's better to check for
> "== MAX_WPA_IE_LEN - 1".  They're effectively the same, but to me it
> feels cleaner to be explicit how we're handling truncated data.
> 
> regards,
> dan carpenter

I feel the same way. Plus we would also avoid looping unnecessarily if
"n" exceeds the threshold. Will send a patch asap.

regards,
rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
