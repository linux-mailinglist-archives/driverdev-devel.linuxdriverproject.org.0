Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A8D346D6E
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 23:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E24D084814;
	Tue, 23 Mar 2021 22:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jpWHulJJV4Mu; Tue, 23 Mar 2021 22:43:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7011684806;
	Tue, 23 Mar 2021 22:43:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEE471BF2BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 22:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDD2384806
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 22:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RPTnj1uJR0s7 for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 22:42:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
 [209.85.166.177])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FED184805
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 22:42:54 +0000 (UTC)
Received: by mail-il1-f177.google.com with SMTP id j11so19647840ilu.13
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 15:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KVmKCSdOdE0heS6y/Cbbfc/TApG4WjUWKfbAhWrSGbs=;
 b=BfsE3ojGU2dkuJMcpZ5NXReCZtHA9qxIJ4/3aRCTWNu3SicatI5ND+50sj92S0Tv1a
 KJKqKWCALms2ibuGRJpWP1aDUa7E6wWvLN873kIcOvk0M5C6TTJAM2fQ53185k+yE1sM
 Z+tXhoEaSzaycf0syh/caKPAefxvXaL1yAzrXxWpJDpqYySry7QE9SOKIYv7qGfMBJxX
 HqEvozCFyFvrpmhdgSF+tiXiWtrOdlJ8PcWhrBeIHgCW1EZSrtwtDFqTQpVuNIgwwOGP
 tG0l25oZ/TAdFvWh4aln5cWh+WEJlgZLEJlY3nWDdL0hQqbh8l1LNuSUbEnsDr8sLdRN
 j1EA==
X-Gm-Message-State: AOAM533RXMfwpeAnrZmLEE/i8ALrYLvN3ep6+5x2spX4vuVg9c5ekwVP
 KnGkDgVx7rJIL67E54Ql/A==
X-Google-Smtp-Source: ABdhPJwBk7tZXg9j0xfN8xEAYZDHN4Zew5Ma8PpLvYQTNKrWQj5/xQRmwUlUtQCNdhtaFJhzACwpBw==
X-Received: by 2002:a92:b00d:: with SMTP id x13mr391816ilh.128.1616539373579; 
 Tue, 23 Mar 2021 15:42:53 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id s9sm110713iob.33.2021.03.23.15.42.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 15:42:52 -0700 (PDT)
Received: (nullmailer pid 1483403 invoked by uid 1000);
 Tue, 23 Mar 2021 22:42:49 -0000
Date: Tue, 23 Mar 2021 16:42:49 -0600
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v5 02/24] dt-bindings: introduce silabs,wfx.yaml
Message-ID: <20210323224249.GA1483296@robh.at.kernel.org>
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <20210315132501.441681-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315132501.441681-3-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 15 Mar 2021 14:24:39 +0100, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Prepare the inclusion of the wfx driver in the kernel.
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs=
,wfx.yaml
> =


Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
