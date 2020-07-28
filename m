Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46004230A75
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 14:42:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43BBB85FAD;
	Tue, 28 Jul 2020 12:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLrdsFJmJCCn; Tue, 28 Jul 2020 12:42:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42A0285FA5;
	Tue, 28 Jul 2020 12:42:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8427A1BF3BA
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 12:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 808EE87099
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 12:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZkDRuqKDXFoS for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 12:42:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 24A1786CE7
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 12:42:17 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id ha11so4279205pjb.1
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 05:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DRtsTZTInfavsTIFBbELheDvvBIHfMEH5f/reZk59Q0=;
 b=VsACgHGa8pTwFHEe1syWIe4FKAAuDH4vnVoh5IoqbSC5nUwGX+Uwymnu4tHUZQwsrg
 bAUSnlzdkSW1sWtFnErCgmnmuba31mLHaRENDFAmwESavec5sZ6aXXDiPQtWV0dms3Qw
 Q6oLjws9DZOg+yJdfUgQ2cjLnRA2j3MlRf2F6b7LkeIT2Q4Cvlul7qzhEQmGittF7b5B
 dbl8MFRYjimkCmkd/emKJUjTX6NlzCNZvfzCcgWLADP3f75T77L0o7aD8Wn/zj0MIuXv
 MJiSEJCN/rTE+rQQwOSr7Fls1DQpMboJyFot035vkNVIE7Jm1Eg1ub1D5j0obGepaCW/
 Fsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DRtsTZTInfavsTIFBbELheDvvBIHfMEH5f/reZk59Q0=;
 b=KrOV7CSQfFj8rSU+iXG3EREgYyv1mpsMCpWOZqs5RagxpvKGT0SID/FJUve9Xdugti
 PpIHDB7W4LmNXpXo6whkZPQxHeEu65tzrNR1B3lVsGpwG3P8sihm5ZL8BLnjlSeP+XEg
 wPvh0ZuMOvx4vKmbvFLOLpXmHZiamR8YGW/GNVLcF37tqbw1rs8hiyD5AlKMsPLU9ROt
 zlYGyHzSMITq/mgBgJcm2w77mkA6MHMZh9y4JqzD6gyk3dghcPQKuo5r0W/ZbgfHl9oH
 16V3PpMfksM/FFxNSbDyIQRnEGx6OHuZ7Y9eFVPc05oxOpQGJSLVe/EpcsuQ1kMRY+oV
 yA5w==
X-Gm-Message-State: AOAM53061o43yDNM6AQN/lhUDHXBfCjRuKujhTKE4TxUxr+KWPttetu4
 Cd04vsWzWWLcNoFpwJhGmyQ=
X-Google-Smtp-Source: ABdhPJxhMEpi6j0i+tSqYk9Nj+n0YJ1omG1107kkNFdUcGdH7M56U3YwSdV3MsWTHnQYdBVVu5JhZw==
X-Received: by 2002:a17:90a:4f45:: with SMTP id
 w5mr4365834pjl.11.1595940136736; 
 Tue, 28 Jul 2020 05:42:16 -0700 (PDT)
Received: from gmail.com ([2401:4900:2eef:ca92:3545:4a68:f406:d612])
 by smtp.gmail.com with ESMTPSA id h6sm3371551pjt.53.2020.07.28.05.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 05:42:16 -0700 (PDT)
Date: Tue, 28 Jul 2020 18:10:31 +0530
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Bjorn Helgaas <bjorn@helgaas.com>,
 Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Teddy Wang <teddy.wang@siliconmotion.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v1] staging: sm750fb: use generic power management
Message-ID: <20200728124031.GF1331847@gmail.com>
References: <20200728123349.1331679-1-vaibhavgupta40@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200728123349.1331679-1-vaibhavgupta40@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch is compile-tested only

Thanks
Vaibhav Gupta
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
