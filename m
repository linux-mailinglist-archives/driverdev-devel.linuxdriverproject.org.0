Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 497C227103E
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 21:31:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 119CB204E5;
	Sat, 19 Sep 2020 19:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxNCr6kNf93m; Sat, 19 Sep 2020 19:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3B682049A;
	Sat, 19 Sep 2020 19:31:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76F031BF303
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 19:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E7F18671F
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 19:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W8mMhXAsMVpj for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 19:31:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 706D0866DA
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 19:31:27 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id z9so8725794wmk.1
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 12:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=UOl7aJgZVOco43pM0FR5gPug/eBppWzmQE1Qt2hPsAY=;
 b=SAR0t0Mj+t6LJOUepzhwcvAdBYiCPJWGjidXih0mxT/g+e3HpjDn+rHLzEtKVjbxW/
 U3eKWcHtoLlmBxL0VfxZEGGwU6kak1+ICOcHK/ET7oWeNI54c6+j2fMN2r0tkSfZFh1j
 TrwhSwDu7L7ecAblHecFDbynutj3x1Rhjh7AzcjoAFvurffDnvFqnkjDpJpWQCnozpp2
 wtJ58uf6U8uH8fyZvud81B3jgbTUU7RX/OHlDfLrxQQCcVU1dERHDuz2Y8twvucivKPL
 9sq77/VxiElGMOKb4uf5Es3JXwLn3ugDaix0Uo4H7Ry8agI+9dfLEVWnqT+28qlFjvUh
 mB4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UOl7aJgZVOco43pM0FR5gPug/eBppWzmQE1Qt2hPsAY=;
 b=jrVcuSINN0ex5+C04IL50xha9pXiRlnb5bJVNmDPPjDGMpvoQt9gWPN/QznbVI3BMF
 FoP76xpqb+6AWONWP9/UbrWKYGAZs0buhubuS4mKueTIUlcBhok8gFZYvCx5cqjBnLxP
 7ph09T0XjPHNcZP2xX5zS1xVqLxEiig48BdDiD/b7s65Gl6hoXOXSt7gmNDJotBSR2eP
 SMG8ZnFH0/M1IEQpS603fK5794F739dDf1F0v6SSm3jAGjTu60e+CEE0jSkP6KQtnyO0
 7wiFKMU3dq8Fmr/qTq23UerwEE+FaUOGYgL+xDib0FiQW0vgmeXSz3CDlNLEjEFbD7w9
 oG1Q==
X-Gm-Message-State: AOAM532ctF0KP7mt+drE9VZIBteqTKv9r4Z2+gwdJ7In2HMbnpLTJ0gb
 xxDQRSQK4KdO/kfB9Ri+cFA=
X-Google-Smtp-Source: ABdhPJwJ20Z3JMpNdgnVFQm9slja9W33AF/EopSX3S7Pe3V4UVomGGyQAntmfyCVsKyY+zUqaBXruA==
X-Received: by 2002:a1c:32c6:: with SMTP id y189mr21360900wmy.51.1600543885768; 
 Sat, 19 Sep 2020 12:31:25 -0700 (PDT)
Received: from [192.168.43.148] (92.40.169.140.threembb.co.uk. [92.40.169.140])
 by smtp.gmail.com with ESMTPSA id w14sm12516740wrk.95.2020.09.19.12.31.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Sep 2020 12:31:24 -0700 (PDT)
Subject: Re: [PATCH] staging: media: atomisp: Don't do unnecessary zeroing of
 memory
References: <20200909204807.36501-1-alex.dewar90@gmail.com>
From: Alex Dewar <alex.dewar90@gmail.com>
Message-ID: <6e70df97-808a-6d23-c24e-4b7c905cccda@gmail.com>
Date: Sat, 19 Sep 2020 20:31:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200909204807.36501-1-alex.dewar90@gmail.com>
Content-Language: en-US
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-09-09 21:48, Alex Dewar wrote:
> In a few places in pci/sh_css_params.c, memset is used to zero memory
> immediately before it is freed. As none of these structs appear to
> contain sensitive information, just remove the calls to memset.
Friendly ping?
>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> ---
>   drivers/staging/media/atomisp/pci/sh_css_params.c | 6 ------
>   1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
> index 2c67c23b3700..24fc497bd491 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_params.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
> @@ -4378,7 +4378,6 @@ ia_css_3a_statistics_free(struct ia_css_3a_statistics *me)
>   	if (me) {
>   		kvfree(me->rgby_data);
>   		kvfree(me->data);
> -		memset(me, 0, sizeof(struct ia_css_3a_statistics));
>   		kvfree(me);
>   	}
>   }
> @@ -4417,7 +4416,6 @@ ia_css_dvs_statistics_free(struct ia_css_dvs_statistics *me)
>   	if (me) {
>   		kvfree(me->hor_proj);
>   		kvfree(me->ver_proj);
> -		memset(me, 0, sizeof(struct ia_css_dvs_statistics));
>   		kvfree(me);
>   	}
>   }
> @@ -4459,7 +4457,6 @@ ia_css_dvs_coefficients_free(struct ia_css_dvs_coefficients *me)
>   	if (me) {
>   		kvfree(me->hor_coefs);
>   		kvfree(me->ver_coefs);
> -		memset(me, 0, sizeof(struct ia_css_dvs_coefficients));
>   		kvfree(me);
>   	}
>   }
> @@ -4551,7 +4548,6 @@ ia_css_dvs2_statistics_free(struct ia_css_dvs2_statistics *me)
>   		kvfree(me->ver_prod.odd_imag);
>   		kvfree(me->ver_prod.even_real);
>   		kvfree(me->ver_prod.even_imag);
> -		memset(me, 0, sizeof(struct ia_css_dvs2_statistics));
>   		kvfree(me);
>   	}
>   }
> @@ -4635,7 +4631,6 @@ ia_css_dvs2_coefficients_free(struct ia_css_dvs2_coefficients *me)
>   		kvfree(me->ver_coefs.odd_imag);
>   		kvfree(me->ver_coefs.even_real);
>   		kvfree(me->ver_coefs.even_imag);
> -		memset(me, 0, sizeof(struct ia_css_dvs2_coefficients));
>   		kvfree(me);
>   	}
>   }
> @@ -4710,7 +4705,6 @@ ia_css_dvs2_6axis_config_free(struct ia_css_dvs_6axis_config *dvs_6axis_config)
>   		kvfree(dvs_6axis_config->ycoords_y);
>   		kvfree(dvs_6axis_config->xcoords_uv);
>   		kvfree(dvs_6axis_config->ycoords_uv);
> -		memset(dvs_6axis_config, 0, sizeof(struct ia_css_dvs_6axis_config));
>   		kvfree(dvs_6axis_config);
>   	}
>   }

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
