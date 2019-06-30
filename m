Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7C75ADEA
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 03:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0292E87B3E;
	Sun, 30 Jun 2019 01:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9UGrnvZzjIK; Sun, 30 Jun 2019 01:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 798DD878CD;
	Sun, 30 Jun 2019 01:30:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3EBE1BF2B7
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 01:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DACB1203D6
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 01:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9IceCzsZwYfM for <devel@linuxdriverproject.org>;
 Sun, 30 Jun 2019 01:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 0830A203CE
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 01:29:22 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id m4so4295151pgk.0
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 18:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PZNWaDjrK6/UUo0Yn+Kol/kvDDH8w6BRoqTUeivhOSU=;
 b=qjWI+SkRFtEm9Wjs9fU3xGLpqIyn6jcDXKelm5OysyaMAqSOxMYNMNgTPjGfNI35ZM
 RFqCNekTWzQxZUnEyFUHB2quWJtkHVapDiazXw9NLHL4KlKmUL2Rb79iceuI1zBHALqJ
 6BpZGsGYgoeKkczSx47GKdWCNG6fnT30exl4OMKr+QD5F+FBn4fnHwydeWJpSmkpga4s
 QABX1ISMgPWXKpNJzKJtp7hbEWzFUjNeQSJlTuUZYigAdshiy3nE6oiKmMslqb3mOHdO
 q/sQpsOHy+RcwHSEZytvmriBo66/qLMHGXTLA0EOOqxUZ2e3VLqD+22hU9sOKNbUHDvN
 d0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PZNWaDjrK6/UUo0Yn+Kol/kvDDH8w6BRoqTUeivhOSU=;
 b=CzcXYGCaRA2GD38ntpTzOjE7b64+O/dAmROvarp/XT8gaQFr7DMX3V47VsCfBnUYGR
 h2m1/Ojwh4cqzHB+lRlxv5ZGzwKErLebm2YbrzXcPtnBi3rfxFGJVRfyFzPduNQ3hHJf
 DHokfvSy8h9mJOpRFHBUD4vNJzAw5B4sc4B9eXbvhdhDxjceWl/mkbDvTSMlUwbysSjh
 nzkcCC5jvoCZUXU118HbzR+k6IGmNIb1MHOfcKLvvUuqH5lnHiY9I4IBgTkpfRWASm/l
 VOJ0IistcUnRfcVYl3wovOdcvC8sRiIBkaV+ecEFZRKrCuXpbakndVEKR57sDWZFKySG
 ZOpg==
X-Gm-Message-State: APjAAAVbaSMeVCdqj356TwhWEBgqoSR897Tru2K+dg8pjzvmYI5koRvt
 VbZ7atmRwMV8fcJNoPFQ+uI=
X-Google-Smtp-Source: APXvYqybY2U4+o74CvmYUyIniiYmy0ZUjDo2XSRK1J4zPhTOqctVTn2A9UEtOL9mnyS/MBCTW0zVfA==
X-Received: by 2002:a17:90a:5887:: with SMTP id
 j7mr22126251pji.136.1561858161574; 
 Sat, 29 Jun 2019 18:29:21 -0700 (PDT)
Received: from t-1000 (c-98-210-58-162.hsd1.ca.comcast.net. [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id h4sm5655416pji.24.2019.06.29.18.29.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 18:29:20 -0700 (PDT)
Date: Sat, 29 Jun 2019 18:29:18 -0700
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH 10/10] staging/rtl8723bs/hal: fix comparison to
 true/false is error prone
Message-ID: <20190630012917.GA21923@t-1000>
References: <20190629103751.GA15649@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190629103751.GA15649@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 29, 2019 at 04:07:51PM +0530, Hariprasad Kelam wrote:

Hello Hari Prasad,
Please add the recommended reviewers mentioned in the TODO file of 
rtl8723bs directory.

I see the following emails in the TODO file.

Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
Hans de Goede <hdegoede@redhat.com> and Larry Finger
<Larry.Finger@lwfinger.net>

> fix below issues reported by checkpatch
> 
> CHECK: Using comparison to false is error prone
> CHECK: Using comparison to true is error prone
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> index 66caf34..99e0b91 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> @@ -290,7 +290,7 @@ static u8 halbtcoutsrc_IsWifiBusy(struct adapter *padapter)
>  	if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE) == true) {
>  		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
>  			return true;
> -		if (true == pmlmepriv->LinkDetectInfo.bBusyTraffic)
> +		if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
>  			return true;
>  	}
>  
> @@ -310,12 +310,12 @@ static u32 _halbtcoutsrc_GetWifiLinkStatus(struct adapter *padapter)
>  
>  	if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE) == true) {
>  		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
> -			if (true == bp2p)
> +			if (bp2p)
>  				portConnectedStatus |= WIFI_P2P_GO_CONNECTED;
>  			else
>  				portConnectedStatus |= WIFI_AP_CONNECTED;
>  		} else {
> -			if (true == bp2p)
> +			if (bp2p)
>  				portConnectedStatus |= WIFI_P2P_GC_CONNECTED;
>  			else
>  				portConnectedStatus |= WIFI_STA_CONNECTED;
> @@ -372,7 +372,7 @@ static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
>  
>  	pmlmeext = &padapter->mlmeextpriv;
>  
> -	if (GLBtcWiFiInScanState == false) {
> +	if (!GLBtcWiFiInScanState) {
>  		if (pmlmeext->sitesurvey_res.bss_cnt > 0xFF)
>  			scan_AP_num = 0xFF;
>  		else
> @@ -1444,7 +1444,7 @@ void hal_btcoex_IQKNotify(struct adapter *padapter, u8 state)
>  
>  void hal_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf)
>  {
> -	if (GLBtcWiFiInIQKState == true)
> +	if (GLBtcWiFiInIQKState)
>  		return;
>  
>  	EXhalbtcoutsrc_BtInfoNotify(&GLBtCoexist, tmpBuf, length);
> -- 
> 2.7.4
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
